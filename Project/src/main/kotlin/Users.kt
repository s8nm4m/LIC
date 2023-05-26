object Users {
    private const val FILENAME = "USERS.txt"
    fun getUsers(): HashMap<String, List<String>> {
        val map = HashMap<String, List<String>>()
        val list = FileAccess.readFile(FILENAME)
        for (user in list) {
            val a = user.split(";")
            map[a[0]] = a.dropLast(1)
        }
        return map
    }

    fun writeUsers(userList: HashMap<String, List<String>>) {
        val list = ArrayList<String>()
        for (user in userList) {
            var u = ""
            for (i in user.value) {
                u += "$i;"
            }
            list.add(u)
        }
        FileAccess.writeFile(FILENAME, list)
    }
}

fun main() {
    val a = Users.getUsers()
    for (i in a) println(i)
}