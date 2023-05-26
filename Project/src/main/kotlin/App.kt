object App {
    private var log = ArrayList<List<String>>()
    var users = HashMap<String, List<String>>()
    private const val MAX_NAME_LENGHT = 16
    fun init() {
        M.init()
        DoorMechanism.init()
        TUI.init()
        users = Users.init()
        log = Log.init()
    }

    fun insertUser() {
        if (users.size==1000){
            TUI.writeMessage("Database is full.")
        }
        var i = 0
        while (i < users.size) {
            val txt = if (i < 10) "00$i" else if (i < 100) "0$i" else i
            if (users["$txt"] == null) break
            else i++
        }
        var name: String
        do {
            println("Insert user's name (Max $MAX_NAME_LENGHT characters)")
            name = readln()
        } while (name.length > MAX_NAME_LENGHT)
        println("Insert PIN")
        val pin = readln()
        val txt = if (i < 10) "00$i" else if (i < 100) "0$i" else i
        val newUser = ("$txt;$pin;$name;").split(";").dropLast(1)
        users["$txt"] = newUser
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
        if (!M.readM()) {
            TUI.clear()
            TUI.writeUIN()
            val user = TUI.readUIN()
            TUI.nextLine()
            TUI.writePIN()
            val pin = TUI.readPIN()
            var isIn = false
            for (i in App.users) {
                if (i.value[0] == user && i.value[1] == pin) {
                    TUI.clear()
                    isIn = true
                    var txt = i.value[2]
                    if (i.value.size == 4)
                        txt += ":${i.value[3]}"
                    TUI.writeMessage(txt)
                    if (i.value.size == 4) {
                        if (TUI.readKey() == '*'.code) {
                            App.users[i.key] = i.value.dropLast(1)
                        }
                    }
                    if (TUI.readKey() == '#'.code) {
                        val p = TUI.newPIN()
                        if (p != null) {
                            val u = i.value.mapIndexed { index, s -> if (index == 2) pin else s }
                            App.users[i.key] = u
                        }
                    }
                    DoorMechanism.open(10)
                    while (!DoorMechanism.finished());
                    DoorMechanism.close(10)
                    while (!DoorMechanism.finished());
                }
            }
            if (!isIn) {
                TUI.clear()
                TUI.writeMessage("User not registred.")
                Thread.sleep(2000)
            }
        } else {
            TUI.clear()
            TUI.writeMessage("Out of Service")
            App.usersList()
            App.insertUser()
            App.usersList()
            val user = readln()
            val m = readln()
            App.insertMessage(user, m)
            App.usersList()
            App.removeUser()
            App.usersList()
            while (M.readM());
            if (!M.readM()) {
                App.turnOff()
                break
            }
        }
    }
}