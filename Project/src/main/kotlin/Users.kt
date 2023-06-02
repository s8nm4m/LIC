object Users {
    private const val FILENAME = "USERS.txt"

    // le o ficheiro txt e guarda os users registados
    fun getUsers(): HashMap<Int, User> {
        val map = HashMap<Int, User>()
        val list = FileAccess.readFile(FILENAME)
        for (line in list) {
            val a = line.split(";")
            val user = User(a[0].toInt(), a[1].toInt(), a[2], a[3])
            map[user.uin] = user
        }
        return map
    }

    // escreve cada user em userList no ficheiro USERS.txt
    fun writeUsers(userList: HashMap<Int, User>) {
        val list = ArrayList<String>()
        for (user in userList.values) {
            list.add("${user.uin};${user.pin};${user.name};${user.msg};")
        }
        FileAccess.writeFile(FILENAME, list)
    }

    class User {
        val uin: Int
        var pin: Int
        val name: String
        var msg: String

        constructor(id: Int, pw: Int, n: String, message: String = "") {
            uin = id
            pin = pw
            name = n
            msg = message
        }
    }

    // le o conteudo do ficheiro USERS
    fun init(): java.util.HashMap<Int, User> {
        return getUsers()
    }
}

fun main() {
    val a = Users.getUsers()
    for (i in a) println(i)
}