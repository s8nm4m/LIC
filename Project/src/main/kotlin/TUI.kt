object TUI {
    fun init() {
        LCD.init()
        KBD.init()
    }

    private fun writeChar(char: Char) {
        LCD.write(char)
    }

    private fun writeString(text: String) {
        if (text.length >= 16) {
            for (i in 0 until 16) {
                writeChar(text[i])
            }
            nextLine()
            for (i in 16 until text.length) {
                writeChar(text[i])
            }
        } else
            LCD.write(text)
    }

    fun writeUser() {
        writeString("Username: ")
    }

    fun writePassword() {
        writeString("Password: ")
    }

    private fun readKey(): Int {
        return KBD.waitKey(5000).toInt()
    }

    fun errorMessage() {
        clear()
        writeString("Wrong Username")
        nextLine()
        writeString("or Password.")
        Thread.sleep(2000)
        clear()
    }

    fun clear() {
        LCD.clear()
    }

    fun nextLine() {
        LCD.cursor(1, 0)
    }

    fun writeMessage(text: String) {
        val s = text.split(":")
        writeString(s[0])
        nextLine()
        writeString(s[1])
    }

    fun readUser(): String? {
        var user = ""
        while (user.length < 3) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (user.isNotEmpty() && c == '*') {
                clear()
                writeUser()
            } else if (c == '*') {
                break
            } else {
                user += c
                writeChar(c)
            }
        }
        return if (user.length == 3) user else null
    }

    fun readPassword(): String? {
        var pw = ""
        while (pw.length < 4) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (pw.isNotEmpty() && c == '*') {
                clear()
                writePassword()
            } else if (c == '*') {
                break
            } else {
                pw += c
                writeChar('*')
            }
        }
        return if (pw.length == 4) pw else null
    }
    /*
        fun access() {
            val reader = BufferedReader(FileReader("Users.txt"))
            val writer = PrintWriter("Log File.txt")
            var user = ""
            LCD.write("Username: ")
            while (user.length < 3) {
                val c = KBD.waitKey(5000)
                if (c == KBD.NONE) {
                    LCD.clear()
                    break
                } else if (user.isNotEmpty() && c == '*') {
                    LCD.clear()
                } else if (c == '*') {
                    break
                } else {
                    user += c
                    LCD.write(c)
                }
            }
            var pw = ""
            LCD.cursor(1, 0)
            LCD.write("Password: ")
            while (pw.length < 4) {
                val c = KBD.waitKey(5000)
                if (c == KBD.NONE) {
                    LCD.clear()
                    break
                } else if (pw.isNotEmpty() && c == '*') {
                    LCD.clear()
                } else if (c == '*') {
                    break
                } else {
                    pw += c
                    LCD.write('*')
                }
            }
            if (user.length == 3 && pw.length == 4) {
                var line: String?
                line = reader.readLine()
                var exists = false
                while (line != null) {
                    val split = line.split(";")
                    if (split[0].compareTo(user) == 0) {
                        if (split[1].compareTo(pw) == 0) {
                            LCD.clear()
                            val message = split[2].split(":")
                            LCD.write(message[0])
                            LCD.cursor(1, 0)
                            LCD.write(message[1])
                            writer.println("${Date()} $user")
                            exists = true
                            break
                        }
                    }
                    line = reader.readLine()
                }
                if (!exists) {
                    LCD.clear()
                    LCD.write("Utilizador ou")
                    LCD.cursor(1, 0)
                    LCD.write("password errada.")
                    Thread.sleep(5000)
                    LCD.clear()
                }
            }
            writer.close()
        }*/
}

fun main() {
    TUI.init()
    TUI.writeUser()
    TUI.readUser()
    TUI.nextLine()
    TUI.writePassword()
    TUI.readPassword()
    TUI.errorMessage()
    TUI.writeMessage("Andre:Ola")
}