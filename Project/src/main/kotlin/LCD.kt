object LCD {
    private const val RS = 0x04
    private const val Enable = 0x02
    private const val DATA = 0x78
    private const val LOW = 0x0F
    private const val SLEEPTIME = 1L
    private const val SLEEPTIME1 = 40L
    private const val SLEEPTIME2 = 5L
    private const val SLEEPWRITE = 40
    private const val SLEEPSET = 230
    private const val SLEEPCLR = 270
    private const val ON = 0x01
    private const val OFF = 0x00
    private const val SET8BITS = 0x03
    private const val SET4BITS = 0x02
    private const val NUM_LINES_CHAR = 0x28
    private const val DISPLAY_OFF = 0x08
    private const val DISPLAY_CLEAR = 0x01
    private const val ENTRY_MODE = 0x06
    private const val DISPLAY_ON_CONTROL = 0x0E
    private const val SERIAL = true

    // Escreve um nibble de comando/dados no LCD em paralelo
    private fun writeNibbleParallel(rs: Boolean, data: Int) {
        HAL.writeBits(RS, (if (rs) ON else OFF).shl(2))
        HAL.writeBits(DATA, data.shl(3))
        Thread.sleep(0, SLEEPWRITE)
        HAL.setBits(Enable)
        Thread.sleep(0, SLEEPSET)
        HAL.clrBits(Enable)
        Thread.sleep(0, SLEEPCLR)
    }

    // Escreve um nibble de comando/dados no LCD em série
    private fun writeNibbleSerial(rs: Boolean, data: Int) {
        val r = if (rs) ON else OFF
        SerialEmitter.send(SerialEmitter.Destination.LCD, data.shl(1) + r)
    }

    // Escreve um nibble de comando/dados no LCD
    private fun writeNibble(rs: Boolean, data: Int) {
        if (SERIAL) writeNibbleSerial(rs, data) else writeNibbleParallel(rs, data)
    }

    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int) {
        writeNibble(rs, data.shr(4))
        writeNibble(rs, data.and(LOW))
    }

    // Escreve um comando no LCD
    private fun writeCMD(data: Int) {
        writeByte(false, data)
    }

    // Escreve um dado no LCD
    private fun writeDATA(data: Int) {
        writeByte(true, data)
    }

    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init() {
        SerialEmitter.init()
        Thread.sleep(SLEEPTIME1)
        writeNibble(false, SET8BITS)
        Thread.sleep(SLEEPTIME2)
        writeNibble(false, SET8BITS)
        Thread.sleep(SLEEPTIME)
        writeNibble(false, SET8BITS)
        Thread.sleep(SLEEPTIME)
        writeNibble(false, SET4BITS)
        Thread.sleep(SLEEPTIME)
        writeCMD(NUM_LINES_CHAR)
        Thread.sleep(SLEEPTIME)
        writeCMD(DISPLAY_OFF)
        Thread.sleep(SLEEPTIME)
        writeCMD(DISPLAY_CLEAR)
        Thread.sleep(SLEEPTIME)
        writeCMD(ENTRY_MODE)
        Thread.sleep(SLEEPTIME)
        writeCMD(DISPLAY_ON_CONTROL)
    }

    // Escreve um caráter na posição corrente.
    fun write(c: Char) {
        writeDATA(c.code)
        Thread.sleep(50)
    }

    // Escreve uma “string” na posição corrente.
    fun write(text: String) {
        text.forEach { write(it) }
    }

    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int) {
        writeByte(false, (line * 4 + 8) * 16 + column)
    }

    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(DISPLAY_CLEAR)
    }
}

fun main() {
    LCD.init()
    while (true) {
        LCD.clear()
        LCD.write("hello")
        LCD.cursor(1, 0)
        Thread.sleep(2000)
    }
}
