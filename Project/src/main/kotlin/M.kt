object M {
    fun insertUser(userList: HashMap<String, List<String>>, newUser: String) {
        val user = newUser.split(";")
        userList[user[0]] = user
    }

    fun removeUser(userList: HashMap<String, List<String>>, user: String) {
        userList.remove(user.split(";")[0])
    }

    fun insertMessage(userList: HashMap<String, List<String>>, user: String, message: String) {
        userList.remove(user.split(";")[0])
        val updatedUser = ("$user;$message;").split(";").dropLast(1)
        userList[updatedUser[0]] = updatedUser
    }

    fun turnOff(userList: HashMap<String, List<String>>) {
        Users.writeUsers(userList)
        TUI.writeMessage("Tank u Com aGan!")
    }
}

fun main(){
    while (true){
        if (TUI.readBit(M))
    }
}