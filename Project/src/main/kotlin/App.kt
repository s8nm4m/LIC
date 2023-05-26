object App {
    private var log = ArrayList<List<String>>()
    private var users = HashMap<String, List<String>>()
    private const val MAX_NAME_LENGHT = 16
    fun init() {
        M.init()
        DoorMechanism.init()
        TUI.init()
        users = Users.init()
        log = Log.init()
    }

    fun insertUser() {
        var i = 0
        while (i < users.size) {
            if (users["$i"] == null) break
            else i++
        }
        var name: String
        do {
            println("Insert user's name (Max $MAX_NAME_LENGHT characters)")
            name = readln()
        } while (name.length > MAX_NAME_LENGHT)
        println("Insert PIN")
        val pin = readln()
        val newUser = ("$i;$pin;$name;").split(";").dropLast(1)
        users["$i"] = newUser
    }

    fun removeUser() {
        val uin = readln()
        println("Confirm removal of user $uin? (Y|N)")
        val confirm = readln()
        if (confirm[0] == 'y' || confirm[0] == 'Y') {
            users.remove(uin)
        }
    }

    fun insertMessage(uin: String, message: String) {
        val user = users[uin]
        users.remove(uin)
        var txt = ""
        for (i in user!!) {
            txt += "$i;"
        }
        val updatedUser = ("$txt$message;").split(";").dropLast(1)
        users[updatedUser[0]] = updatedUser
    }

    fun turnOff() {
        Users.writeUsers(users)
        TUI.clear()
        TUI.writeMessage("TaNk u Com aGan!")
    }

    fun usersList() {
        for (i in users) {
            println(i.value)
        }
    }
}

fun main() {
    App.init()
    while (true) {
        if (M.readM()) {
            TUI.writeMessage("Out of Service")
            App.insertUser()
            App.usersList()
            val user = readln()
            val m = readln()
            App.insertMessage(user, m)
            App.usersList()
            App.removeUser()
            App.usersList()
            if (!M.readM()) {
                App.turnOff()
                break
            }
        }
    }
}