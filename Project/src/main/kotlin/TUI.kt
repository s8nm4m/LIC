object TUI {
    private const val MAX_TEXT_LENGTH = 16
    private const val MAX_UIN_LENGTH = 3
    private const val MAX_PIN_LENGTH = 4
    private const val TIMEOUT: Long = 5000
    private const val SECOND_LINE = 1
    private const val FIRST_COL = 0

    // inicia o lcd e o kbd
    fun init() {
        LCD.init()
        KBD.init()
    }

    // escreve um caracter no lcd
    private fun writeChar(char: Char) {
        LCD.write(char)
    }

    // escreve uma frase no lcd
    private fun writeString(text: String) {
        if (text.length >= MAX_TEXT_LENGTH) {
            for (i in 0 until MAX_TEXT_LENGTH) {
                writeChar(text[i])
            }
            nextLine()
            for (i in MAX_TEXT_LENGTH until text.length) {
                writeChar(text[i])
            }
        } else
            LCD.write(text)
    }

    // le uma tecla do kbd
    fun readKey(): Int {
        return KBD.waitKey(TIMEOUT).code
    }

    // limpa o display do lcd
    fun clear() {
        LCD.clear()
    }

    // poe o cursor no inicio da segunda linha
    fun nextLine() {
        LCD.cursor(SECOND_LINE, FIRST_COL)
    }

    // Escreve uma frase em cada linha separando po ":". Caso não haja ":", escreve tudo na mesma linha enquanto tiver espaço
    fun writeMessage(text: String) {
        val s = text.split(":")
        writeString(s[0])
        if (s.size > 1) {
            nextLine()
            writeString(s[1])
        }
    }

    //pede ao utilizador para introduzir o seu UIN
    fun writeUIN() {
        writeString("UIN:")
    }

    // pede ao utilizador para introduzir o seu PIN
    fun writePIN() {
        writeString("PIN:")
    }

    // Pede o novo pin, e depois pede uma confirmaçao. Caso sejam iguais retorna esse valor, caso contrario retorna null
    fun newPIN(): String? {
        writePIN()
        val pin = readPIN()
        nextLine()
        writePIN()
        if (readPIN() == pin)
            return pin
        return null
    }

    //le o UIN intrduzido pelo utilizador com 3 caracteres
    //caso seja lido um extrisco durante este processo, ele limpa o que ja foi lido e começa a ler de início, caso ainda estivesse vazio, para de ler
    // se houver um timeout, para de ler
    fun readUIN(): String? {
        var uin = ""
        while (uin.length < MAX_UIN_LENGTH) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (uin.isNotEmpty() && c == '*') {
                clear()
                writeUIN()
            } else if (c == '*') {
                break
            } else {
                uin += c
                writeChar(c)
            }
        }
        return if (uin.length == MAX_UIN_LENGTH) uin else null
    }

    //le o PIN intrduzido pelo utilizador com 4 caracteres
    //caso seja lido um extrisco durante este processo, ele limpa o que ja foi lido e começa a ler do início, caso ainda estivesse vazio, para de ler
    // se houver um timeout, para de ler
    fun readPIN(): String? {
        var pin = ""
        while (pin.length < MAX_PIN_LENGTH) {
            val c = readKey().toChar()
            if (c == KBD.NONE) {
                clear()
                break
            } else if (pin.isNotEmpty() && c == '*') {
                clear()
                writePIN()
            } else if (c == '*') {
                break
            } else {
                pin += c
                writeChar('*')
            }
        }
        return if (pin.length == MAX_PIN_LENGTH) pin else null
    }

    // limpa a segunda linha, sem alterar o conteudo da primeira, e prepara-se para escrever no inico da segunda linha
    fun clearSecondLine() {
        nextLine()
        writeString("                ")
        nextLine()
    }
}

fun main() {
    TUI.init()
    TUI.writeUIN()
    TUI.readUIN()
    TUI.nextLine()
    TUI.writePIN()
    TUI.readPIN()
    TUI.writeMessage("Andre:Ola")
}