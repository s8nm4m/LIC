import kotlin.math.pow

object TUI {
    private const val MAX_TEXT_LENGTH = 16
    private const val MAX_UIN_LENGTH = 2 //including 0
    private const val MAX_PIN_LENGTH = 3 //including 0
    private const val TIMEOUT = 5000L
    private const val SECOND_LINE = 1
    private const val FIRST_COL = 0
    private const val EMPTY = 0
    private const val ASTERISK = '*'.code
    private const val BASE = 10
    private const val UIN = "UIN:"
    private const val PIN = "PIN:"
    private const val CLEAR_LINE = "                "

    // inicia o lcd e o kbd
    fun init() {
        LCD.init()
        KBD.init()
    }

    // escreve um caracter no lcd
    private fun writeChar(char: Char) {
        LCD.write(char)
    }

    // escreve um inteiro no lcd
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
        writeString(UIN)
    }

    // pede ao utilizador para introduzir o seu PIN
    fun writePIN() {
        writeString(PIN)
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

    //le o UIN intrduzido pelo utilizador
    fun readUIN(): Int? {
        return readInput(MAX_UIN_LENGTH, UIN)
    }

    //le o PIN intrduzido pelo utilizador
    fun readPIN() = readInput(MAX_PIN_LENGTH, PIN)

    //le o 'input' intrduzido pelo utilizador
    //caso seja lido um asterisco durante este processo, ele limpa o que ja foi lido e começa a ler do início, caso ainda estivesse vazio, para de ler
    // se houver um timeout, para de ler
    private fun readInput(size: Int, type: String): Int? {
        var r = EMPTY
        var unit = BASE.toDouble().pow(size.toDouble()).toInt()
        var empty = true
        for (i in EMPTY..size) {
            val c = readKey()
            if (c == KBD.NONE.code) {
                clear()
                return null
            } else if (empty && c == ASTERISK) {
                clear()
                if (type == PIN) writePIN() else writeUIN()
            } else if (c == ASTERISK) {
                return null
            } else {
                empty = false
                r += (c - '0'.code) * unit
                unit /= BASE
                val print = if (type == PIN) ASTERISK else c
                writeInt(print)
            }
        }
        return r
    }

    // limpa a segunda linha, sem alterar o conteudo da primeira, e prepara-se para escrever no inico da segunda linha
    fun clearSecondLine() {
        nextLine()
        writeString(CLEAR_LINE)
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