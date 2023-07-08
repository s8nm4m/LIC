@file:Suppress("ControlFlowWithEmptyBody")

import java.security.spec.KeySpec
import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import java.util.*
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec
import kotlin.math.abs
import kotlin.system.exitProcess

object App {
    private var log = HashSet<String>() // lista de logs
    private var users = HashMap<Int, Users.User>() // lista de users registados
    private const val ERROR_ADD_MSG = "User doesnt exist."
    private const val DATE_FORMAT = "yyyy-MM-dd HH:mm"
    private const val PIN_CHANGED = "Pin changed successfully."
    private const val MSG_ADDED = "Message added successfully."
    private const val MAX_NAME_LENGHT = 16 // tamanho maximo do nome do user
    private const val DEFAULT_SPEED = 10
    private const val DISPLAY_TIME = 1000L
    private const val MAX_USERS = 1000
    private const val PIN_ENCRIPTION_MAX = MAX_USERS * 10
    private const val CLEAR_MSG = '*'.code
    private const val CHANGE_PIN = '#'.code
    private const val ALGORITHM_KEY = "PBKDF2WithHmacSHA512"
    private const val ITERATIONS = 50
    private const val KEY_LENGTH = 128
    private const val SECRET_KEY = "RandomSecret"
    private const val NO_MSG = ""
    private const val CONFIRM = 'y'
    private const val FULL_DATABASE = "Database is full."
    private const val INSERT_NEW_USER = "Insert user's name (Max $MAX_NAME_LENGHT characters)"
    private const val INSERT_UIN = "Insert UIN"
    private const val INSERT_MSG = "Insert message"
    private const val INSERT_PIN = "Insert PIN"
    private const val USER_REMOVAL = "UIN to remove?"
    private const val LOGIN_FAIL = "Login Failed."
    private const val WRONG_COMMAND = "No such command."
    private const val OUT_OF_SERVICE = "Out of service"
    private const val COMMANDS = "Commands: New | Del | AddMsg | Exit"

    //função de assistencia à encirptaçao do pin
    private fun ByteArray.toHexString(): String = HexFormat.of().formatHex(this)

    //função de assistencia à encirptaçao do pin
    private fun Int.toCharArray(): CharArray = toString().toCharArray()

    // Gera código de encriptação de 4 digitos representativos do pin do user
    private fun generateHash(password: Int): Int {
        val combinedSalt = "$password$SECRET_KEY"
        val factory: SecretKeyFactory = SecretKeyFactory.getInstance(ALGORITHM_KEY)
        val spec: KeySpec = PBEKeySpec(password.toCharArray(), combinedSalt.toByteArray(), ITERATIONS, KEY_LENGTH)
        val key: SecretKey = factory.generateSecret(spec)
        val hash: ByteArray = key.encoded
        return abs(hash.toHexString().hashCode() % (PIN_ENCRIPTION_MAX))
    }

    //inicia as classes subsequentes e fecha a porta
    fun init() {
        M.init()
        DoorMechanism.init()
        TUI.init()
        users = Users.init()
        log = Log.init()
        DoorMechanism.close(DEFAULT_SPEED)
    }

    // regista um user novo se houver espaço
    private fun insertUser() {
        if (users.size == MAX_USERS) {
            println(FULL_DATABASE)
        } else {
            var id = 0
            while (id < users.size) {
                if (users[id] == null) break
                else id++
            }
            var name: String
            do {
                println(INSERT_NEW_USER)
                name = readln()
            } while (name.length > MAX_NAME_LENGHT)
            println(INSERT_PIN)
            val pin = readln().toInt()
            val newUser = Users.User(id, generateHash(pin), name)
            users[id] = newUser
        }
        usersList()
    }

    //remove um user
    private fun removeUser() {
        println(USER_REMOVAL)
        val uin = readln().toInt()
        println("Confirm removal of user $uin? (Y|N)")
        val confirm = readln()
        if (confirm.lowercase().first() == CONFIRM) {
            users.remove(uin)
        }
        usersList()
    }

    // coloca uma mensagem num user
    private fun insertMessage() {
        println(INSERT_UIN)
        val uin = readln().toInt()
        println(INSERT_MSG)
        val message = readln()
        users[uin]?.msg = message
        if (users[uin] != null) {
            println(MSG_ADDED)
            usersList()
        } else
            println(ERROR_ADD_MSG)
    }

    // regista a lista de users atualizada e os logs, depois desligando o sistema
    private fun turnOff() {
        TUI.clear()
        DoorMechanism.close(DEFAULT_SPEED)
        Users.writeUsers(users)
        Log.writeLog(log)

        exitProcess(0)
    }

    // imprime a lista de users registados
    private fun usersList() {
        for (user in users.values) {
            println("${user.uin}, ${user.pin}, ${user.name}, ${user.msg}")
        }
    }

    // dá ‘login’ caso o uin e pin existam na base de dados, abre e fecha a porta, e ainda pode remover a mensasagem ou
    // alterar o pin currente
    fun logIn(uin: Int, pin: Int): Users.User? {
        val user = users[uin]
        val pw = generateHash(pin)
        if (user != null && user.pin == pw) {
            TUI.clear()
            TUI.writeString(user.name)
            Thread.sleep(DISPLAY_TIME)
            openDoor()
            val l = getTime() + " ${user.uin}"
            log.add(l)
            if (user.msg != NO_MSG) {
                msg(user)
            }
            if (TUI.readKey() == CHANGE_PIN) {
                changePIN(user)
            }
            closeDoor()
        } else {
            TUI.clear()
            TUI.writeString(LOGIN_FAIL)
            Thread.sleep(DISPLAY_TIME)
        }
        return user
    }

    //escreve a mensagem de um user e, caso seja premida a tecla *, remove-a
    private fun msg(user: Users.User) {
        TUI.clear()
        TUI.writeString(user.msg)
        if (TUI.readKey() == CLEAR_MSG) {
            user.msg = NO_MSG
            TUI.clear()
        }
    }

    //altera o pin atribuido a um user
    private fun changePIN(user: Users.User) {
        TUI.clear()
        val newPin = TUI.newPIN()
        if (newPin != null) {
            user.pin = generateHash(newPin)
            TUI.clear()
            TUI.writeString(PIN_CHANGED)
        }
    }

    //fecha a porta
    private fun closeDoor() {
        DoorMechanism.close(DEFAULT_SPEED)
        while (!DoorMechanism.finished());
    }

    //abre a porta
    private fun openDoor() {
        DoorMechanism.open(DEFAULT_SPEED)
        while (!DoorMechanism.finished());
    }

    // vai buscar a data e hora
    private fun getTime(): String {
        val formatter = DateTimeFormatter.ofPattern(DATE_FORMAT)
        return LocalDateTime.now().format(formatter)
    }

    // escreve a data e hora no lcd
    fun printTime() {
        TUI.clear()
        TUI.writeString(getTime())
        TUI.nextLine()
    }

    // le o uin introduzido
    fun getUIN(): Int? {
        TUI.writeUIN()
        val user = TUI.readUIN()
        TUI.clearSecondLine()
        return user
    }

    // le o pin introduzido
    fun getPIN(): Int? {
        TUI.writePIN()
        return TUI.readPIN()
    }

    //manutenção
    fun mKey() {
        TUI.clear()
        TUI.writeString(OUT_OF_SERVICE)
        println(COMMANDS)
        val command = readln()
        when (command.lowercase()) {
            "new" -> insertUser()
            "del" -> removeUser()
            "addmsg" -> insertMessage()
            "exit" -> turnOff()
            "return" -> return
            else -> println(WRONG_COMMAND)
        }
    }
}

fun main() {
    App.init()
    while (true) {
        if (!M.isM()) {
            App.printTime()
            val user = App.getUIN()
            if (user != null) {
                val pin = App.getPIN()
                if (pin != null)
                    App.logIn(user, pin)
            }
        } else {
            while (M.isM()) {
                App.mKey()
            }
        }
    }
}