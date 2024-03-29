object KBD {
    private const val Kval = 0x01
    private const val Kack = 0x01
    private const val K = 0x1E
    const val waitTime = 2000L
    private const val sleepTime = 10L
    private const val CODE1 = 0x00
    private const val CODE2 = 0x04
    private const val CODE3 = 0x08
    private const val CODE4 = 0x01
    private const val CODE5 = 0x05
    private const val CODE6 = 0x09
    private const val CODE7 = 0x02
    private const val CODE8 = 0x06
    private const val CODE9 = 0x0A
    private const val CODE0 = 0x07
    private const val CODEEXT = 0x03
    private const val CODEHASH = 0x0B

    // inicia o HAL e coloca o bit correspondente a K Ack a 0
    fun init() {
        HAL.init()
        HAL.clrBits(Kack)
    }

    const val NONE = 0.toChar()

    // le o que é escrito no teclado e devolve o que leu, caso não consiga ler nada devolve NONE
    private fun getKey(): Int {
        if (HAL.isBit(Kval)) {
            val c = when (HAL.readBits(K).shr(1)) {
                CODE1 -> '1'.code
                CODE2 -> '2'.code
                CODE3 -> '3'.code
                CODE4 -> '4'.code
                CODE5 -> '5'.code
                CODE6 -> '6'.code
                CODE7 -> '7'.code
                CODE8 -> '8'.code
                CODE9 -> '9'.code
                CODEEXT -> '*'.code
                CODE0 -> '0'.code
                CODEHASH -> '#'.code
                else -> NONE.code
            }
            HAL.setBits(Kack)
            while (HAL.isBit(Kval)) {
                Thread.sleep(sleepTime)
            }
            HAL.clrBits(Kack)
            return c
        }
        return NONE.code
    }

    // chama o getKey() até passar o tempo de timeout ou até ler uma tecla
    fun waitKey(timeout: Long): Int {
        val timeInit = System.currentTimeMillis()
        while (true) {
            val time = System.currentTimeMillis()
            val c = getKey()
            if (c != NONE.code) return c
            if (time - timeInit >= timeout) return NONE.code
        }
    }
}

fun main() {
    KBD.init()
    while (true) {
        val c = KBD.waitKey(KBD.waitTime)
        println(c.toChar())
    }
}
