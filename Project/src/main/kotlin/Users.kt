object Users {
    private const val FILENAME = "USERS.txt"
    private const val UIN_MASK = 0x00
    private const val PIN_MASK = 0x01
    private const val NAME_MASK = 0x02
    private const val MSG_MASK = 0x03
    private const val SPLITTER = ';'
    private const val EMPTY_MSG = ""

    // le o ficheiro txt e guarda os users registados
    fun getUsers(): HashMap<Int, User> {
        val map = HashMap<Int, User>()
        val list = FileAccess.readFile(FILENAME)
        for (line in list) {
            val a = line.split(SPLITTER)
            val user = User(a[UIN_MASK].toInt(), a[PIN_MASK].toInt(), a[NAME_MASK], a[MSG_MASK])
            map[user.uin] = user
        }
        return map
    }

    // escreve cada user em userList no ficheiro USERS.txt
    fun writeUsers(userList: HashMap<Int, User>) {
        val list = ArrayList<String>()
        for (user in userList.values) {
            list.add("${user.uin}$SPLITTER${user.pin}$SPLITTER${user.name}$SPLITTER${user.msg}$SPLITTER")
        }
        FileAccess.writeFile(FILENAME, list)
    }

    class User(id: Int, pw: Int, n: String, message: String = EMPTY_MSG) {
        val uin: Int = id
        var pin: Int = pw
        val name: String = n
        var msg: String = message
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