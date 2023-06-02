import kotlin.math.pow

object TUI {
    private const val MAX_TEXT_LENGTH = 16
    private const val MAX_UIN_LENGTH = 2 //including 0
    private const val MAX_PIN_LENGTH = 3 //including 0
    private const val TIMEOUT: Long = 5000
    private const val SECOND_LINE = 1
    private const val FIRST_COL = 0
    private const val EMPTY = 0
    private const val ASTERISK = '*'.code
    private const val BASE = 10

    // inicia o lcd e o kbd
    fun init() {
        LCD.init()
        KBD.init()
    }

    // escreve um caracter no lcd
    private fun writeChar(char: Char) {
        LCD.write(char)
    }

    private fun writeInt(i: Int) {
        LCD.write(i.toChar())
    }

    // escreve uma frase no lcd
    fun writeString(text: String) {
        if (text.length >= MAX_TEXT_LENGTH) {
            for (i in EMPTY until MAX_TEXT_LENGTH) {
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
        return KBD.waitKey(TIMEOUT)
    }

    // limpa o display do lcd
    fun clear() {
        LCD.clear()
    }

    // poe o cursor no inicio da segunda linha
    fun nextLine() {
        LCD.cursor(SECOND_LINE, FIRST_COL)
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
    fun newPIN(): Int? {
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
    fun readUIN(): Int? {
        var uin = EMPTY
        var unit = BASE.toDouble().pow(MAX_UIN_LENGTH.toDouble()).toInt()
        var empty = true
        for (i in EMPTY..MAX_UIN_LENGTH) {
            val c = readKey()
            if (c == KBD.NONE.code) {
                return null
            } else if (empty && c == ASTERISK) {
                clear()
                writeUIN()
            } else if (c == ASTERISK) {
                return null
            } else {
                empty = false
                uin += (c - '0'.code) * unit
                unit /= BASE
                writeInt(c)
            }
        }
        return uin
    }

    //le o PIN intrduzido pelo utilizador com 4 caracteres
    //caso seja lido um extrisco durante este processo, ele limpa o que ja foi lido e começa a ler do início, caso ainda estivesse vazio, para de ler
    // se houver um timeout, para de ler
    fun readPIN(): Int? {
        var pin = EMPTY
        var unit = BASE.toDouble().pow(MAX_PIN_LENGTH.toDouble()).toInt()
        var empty = true
        for (i in EMPTY..MAX_PIN_LENGTH) {
            val c = readKey()
            if (c == KBD.NONE.code) {
                clear()
                return null
            } else if (empty && c == ASTERISK) {
                clear()
                writePIN()
            } else if (c == ASTERISK) {
                return null
            } else {
                empty = false
                pin += (c - '0'.code) * unit
                unit /= BASE
                writeChar('*')
            }
        }
        return pin
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
    TUI.writeString("Hello World")
}