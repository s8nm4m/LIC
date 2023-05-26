object TUI {
    private const val MAXTEXTLENGTH = 16
    private const val MAXUSERLENGTH = 3
    private const val MAXPWLENGTH = 4
    fun init() {
        LCD.init()
        KBD.init()
    }

    private fun writeChar(char: Char) {
        LCD.write(char)
    }

    private fun writeString(text: String) {
        if (text.length >= MAXTEXTLENGTH) {
            for (i in 0 until MAXTEXTLENGTH) {
                writeChar(text[i])
            }
            nextLine()
            for (i in MAXTEXTLENGTH until text.length) {
                writeChar(text[i])
            }
        } else
            LCD.write(text)
    }

    fun readKey(): Int {
        return KBD.waitKey(5000).code
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
        if (s.size > 1) {
            nextLine()
            writeString(s[1])
        }
    }

    fun writeUIN() {
        writeString("UIN:")
    }

    fun writePIN() {
        writeString("PIN:")
    }

    fun newPIN(): String? {
        writePIN()
        val pin = readPIN()
        writePIN()
        if (readPIN() == pin)
            return pin
        return null
    }

    fun readUIN(): String? {
        var user = ""
        while (user.length < MAXUSERLENGTH) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (user.isNotEmpty() && c == '*') {
                clear()
                writeUIN()
            } else if (c == '*') {
                break
            } else {
                user += c
                writeChar(c)
            }
        }
        return if (user.length == MAXUSERLENGTH) user else null
    }

    fun readPIN(): String? {
        var pw = ""
        while (pw.length < MAXPWLENGTH) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (pw.isNotEmpty() && c == '*') {
                clear()
                writePIN()
            } else if (c == '*') {
                break
            } else {
                pw += c
                writeChar('*')
            }
        }
        return if (pw.length == MAXPWLENGTH) pw else null
    }
}

fun main() {
    TUI.init()
    TUI.writeUIN()
    TUI.readUIN()
    TUI.nextLine()
    TUI.writePIN()
    TUI.readPIN()
    TUI.errorMessage()
    TUI.writeMessage("Andre:Ola")
}