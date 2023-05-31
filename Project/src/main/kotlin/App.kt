import java.time.LocalDateTime
import java.time.format.DateTimeFormatter
import kotlin.system.exitProcess

object App {
    private var log = HashSet<List<String>>() // lista de logs
    private var users = HashMap<String, List<String>>() // lista de users registados
    private const val MAX_NAME_LENGHT = 16 // tamanho maximo do nome do user
    private const val DEFAULT_SPEED = 10
    private const val UIN_MASK = 0
    private const val PIN_MASK = 1
    private const val NAME_MASK = 2
    private const val MSG_MASK = 3
    private const val HAS_MSG = 4
    private const val DISPLAY_TIME = 1000L
    private const val MAX_USERS = 1000

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
            var i = 0
            var txt = ""
            while (i < users.size) {
                txt = if (i < 10) "00$i" else if (i < 100) "0$i" else "$i"
                if (users[txt] == null) break
                else i++
            }
            var name: String
            do {
                println("Insert user's name (Max $MAX_NAME_LENGHT characters)")
                name = readln()
            } while (name.length > MAX_NAME_LENGHT)
            println("Insert PIN")
            val pin = readln()
            val newUser = ("$txt;$pin;$name;").split(";").dropLast(1)
            users[txt] = newUser
        }
    }

    //remove um user
    fun removeUser() {
        val uin = readln()
        println("Confirm removal of user $uin? (Y|N)")
        val confirm = readln()
        if (confirm.first() == 'y' || confirm.first() == 'Y') {
            users.remove(uin)
        }
    }

    // coloca uma mensagem num user
    fun insertMessage(uin: String, message: String) {
        val user = users[uin]
        users.remove(uin)
        var txt = ""
        for (i in user!!) {
            txt += "$i;"
        }
        val updatedUser = ("$txt$message;").split(";").dropLast(1)
        users[updatedUser[UIN_MASK]] = updatedUser
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
    fun logIn(uin: String?, pin: String?): List<String>? {
        var isIn = false
        var user: List<String>? = null
        for (i in users) {
            if (i.value[UIN_MASK] == uin && i.value[PIN_MASK] == pin) {
                user = i.value
                TUI.clear()
                isIn = true
                val txt = i.value[NAME_MASK]
                TUI.writeString(txt)
                Thread.sleep(DISPLAY_TIME)
                if (i.value.size == HAS_MSG) {
                    TUI.clear()
                    TUI.writeString(i.value[MSG_MASK])
                }
                DoorMechanism.open(DEFAULT_SPEED)
                while (!DoorMechanism.finished());
                if (i.value.size == HAS_MSG) {
                    if (TUI.readKey() == '*') {
                        users[i.key] = i.value.dropLast(1)
                        TUI.clearSecondLine()
                    }
                }
                if (TUI.readKey() == '#') {
                    TUI.clear()
                    val newPin = TUI.newPIN()
                    if (newPin != null) {
                        val oldpin = i.value[PIN_MASK]
                        val u = i.value.map { if (it == oldpin) newPin else it }
                        users[i.key] = u
                        Users.writeUsers(users)
                        TUI.writeString("Pin changed with success.")
                    }
                }
                DoorMechanism.close(DEFAULT_SPEED)
                while (!DoorMechanism.finished());
                break
            }
        }
        if (!isIn) {
            TUI.clear()
            TUI.writeString("User not registred.")
            Thread.sleep(2000)
        }
        return user
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
    fun getUIN(): String? {
        TUI.writeUIN()
        val user = TUI.readUIN()
        TUI.clearSecondLine()
        return user
    }

    // le o pin introduzido
    fun getPIN(): String? {
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
                println("UIN?")
                val uin = readln()
                println("Message to add?")
                val message = readln()
                insertMessage(uin, message)
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