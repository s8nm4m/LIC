object LCD {
    private const val RS = 0x04
    private const val Enable = 0x02
    private const val DATA = 0x78
    private const val HIGH = 0xF0
    private const val LOW = 0x0F

    // Escreve um nibble de comando/dados no LCD em paralelo
    private fun writeNibbleParallel(rs: Boolean, data: Int) {
        HAL.writeBits(RS, (if (rs) 1 else 0).shl(2))
        HAL.writeBits(DATA, data.shl(3))
        Thread.sleep(0, 40)
        HAL.setBits(Enable)
        Thread.sleep(0, 230)
        HAL.clrBits(Enable)
        Thread.sleep(0, 270)
    }

    // Escreve um nibble de comando/dados no LCD em série
    private fun writeNibbleSerial(rs: Boolean, data: Int) {
        val r = if (rs) 1 else 0
        SerialEmitter.send(SerialEmitter.Destination.LCD, data + r)
    }

    // Escreve um nibble de comando/dados no LCD
    private fun writeNibble(rs: Boolean, data: Int) {
//        writeNibbleParallel(rs, data)
        writeNibbleSerial(rs, data)
    }

    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int) {
        writeNibble(rs, data.and(HIGH).shr(4))
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
        Thread.sleep(40)
        writeNibble(false, 0x03)
        Thread.sleep(5)
        writeNibble(false, 0x03)
        Thread.sleep(1)
        writeNibble(false, 0x03)
        Thread.sleep(1)
        writeNibble(false, 0x02)
        Thread.sleep(1)
        writeCMD(0x28)
        Thread.sleep(1)
        writeCMD(0x08)
        Thread.sleep(1)
        writeCMD(0x01)
        Thread.sleep(1)
        writeCMD(0x06)
        Thread.sleep(1)
        writeCMD(0x0E)
    }

    // Escreve um caráter na posição corrente.
    fun write(c: Char) {
        writeDATA(c.code)
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
        writeCMD(1)
    }
}