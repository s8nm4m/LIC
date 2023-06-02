import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import kotlin.system.exitProcess
import java.security.SecureRandom
import java.security.spec.KeySpec
import java.util.*
import javax.crypto.SecretKey
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec
import kotlin.math.abs

object App {
    private var log = HashSet<List<String>>() // lista de logs
    private var users = HashMap<Int, Users.User>() // lista de users registados
    private const val MAX_NAME_LENGHT = 16 // tamanho maximo do nome do user
    private const val DEFAULT_SPEED = 10
    private const val UIN_MASK = 0
    private const val PIN_MASK = 1
    private const val NAME_MASK = 2
    private const val MSG_MASK = 3
    private const val HAS_MSG = 4
    private const val DISPLAY_TIME = 1000L
    private const val MAX_USERS = 1000
    private const val CLEAR_MSG = '*'.code
    private const val CHANGE_PIN = '#'.code
    private const val ALGORITHM = "PBKDF2WithHmacSHA512"
    private const val ITERATIONS = 50
    private const val KEY_LENGTH = 128
    private const val SECRET = "RandomSecret"

    // Gera código encriptado
    fun generateRandomSalt(): ByteArray {
        val random = SecureRandom()
        val salt = ByteArray(16)
        random.nextBytes(salt)
        return salt
    }

    private fun ByteArray.toHexString(): String =
        HexFormat.of().formatHex(this)

    fun Int.toCharArray(): CharArray = toString().toCharArray()

    // Gera código de encriptação de 4 digitos representativos da password do user // salt = fun generateRandomSalt()
    fun generateHash(password: Int, salt: ByteArray): Int {
        val combinedSalt = "$salt$SECRET"
        val factory: SecretKeyFactory = SecretKeyFactory.getInstance(ALGORITHM)
        val spec: KeySpec = PBEKeySpec(password.toCharArray(), combinedSalt.toByteArray(), ITERATIONS, KEY_LENGTH)
        val key: SecretKey = factory.generateSecret(spec)
        val hash: ByteArray = key.encoded
        return abs(hash.toHexString().hashCode()%10000)
    }

    //examplo -> println(generateHash(a, generateRandomSalt()))


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
    fun insertUser() {
        if (users.size == MAX_USERS) {
            TUI.writeString("Database is full.")
        } else {
            var id = 0
            while (id < users.size) {
                if (users[id] == null) break
                else id++
            }
            var name: String
            do {
                println("Insert user's name (Max $MAX_NAME_LENGHT characters)")
                name = readln()
            } while (name.length > MAX_NAME_LENGHT)
            println("Insert PIN")
            val pin = readln().toInt()
            val newUser = Users.User(id, pin, name)
            users[id] = newUser
        }
    }

    //remove um user
    fun removeUser() {
        val uin = readln().toInt()
        println("Confirm removal of user $uin? (Y|N)")
        val confirm = readln()
        if (confirm.lowercase().first() == 'y') {
            users.remove(uin)
        }
    }

    // coloca uma mensagem num user
    fun insertMessage() {
        println("UIN?")
        val uin = readln().toInt()
        println("Message to add?")
        val message = readln()
        users[uin]?.msg = message
        TUI.writeString("Message added successfully.")
    }

    // regista a lista de users atualizada e os logs, depois desligando o sistema
    fun turnOff() {
        TUI.clear()
        DoorMechanism.close(DEFAULT_SPEED)
        Users.writeUsers(users)
        Log.writeLog(log)
        exitProcess(0)
    }

    // imprime a lista de users registados
    fun usersList() {
        for (i in users) {
            println(i.value)
        }
    }

    // dá ‘login’ caso o uin e pin existam na base de dados, abre e fecha a porta, e ainda pode remover a mensasagem ou
    // alterar o pin currente
    fun logIn(uin: Int, pin: Int): Users.User? {
        val user = users[uin]
        if (user != null && user.pin == pin) {
            TUI.clear()
            TUI.writeString(user.name)
            Thread.sleep(DISPLAY_TIME)
            openDoor()
            if (user.msg != "") {
                TUI.clear()
                TUI.writeString(user.msg)
                if (TUI.readKey() == '*'.code) {
                    user.msg = ""
                    TUI.clear()
                }
            }
            if (TUI.readKey() == '#'.code) {
                TUI.clear()
                val newPin = TUI.newPIN()
                if (newPin != null) {
                    user.pin = newPin
                    TUI.writeString("Pin changed successfully.")
                }
            }
            closeDoor()
        } else {
            TUI.clear()
            TUI.writeString("User not registred.")
            Thread.sleep(2000)
        }
        return user
    }

    private fun closeDoor() {
        DoorMechanism.close(DEFAULT_SPEED)
        while (!DoorMechanism.finished());
    }

    private fun openDoor() {
        DoorMechanism.open(DEFAULT_SPEED)
        while (!DoorMechanism.finished());
    }

    // vai buscar a data e hora e escreve-as no lcd
    fun printTime() {
        TUI.clear()
        val formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm")
        val current = LocalDateTime.now().format(formatter)
        TUI.writeString(current)
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
        TUI.writeString("Out of Service")
        println("Commands: New Del AddMsg Exit")
        val command = readln()
        when (command.lowercase()) {
            "new" -> insertUser()
            "del" -> removeUser()
            "addmsg" -> {

                insertMessage()
            }

            "exit" -> turnOff()
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