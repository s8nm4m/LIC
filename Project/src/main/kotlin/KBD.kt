object KBD {
    private const val Kval = 0x01
    private const val Kack = 0x01
    private const val K = 0x1E
    const val waitTime: Long = 2000
    private const val sleepTime: Long = 10
    private const val CODE1 = 0
    private const val CODE2 = 4
    private const val CODE3 = 8
    private const val CODE4 = 1
    private const val CODE5 = 5
    private const val CODE6 = 9
    private const val CODE7 = 2
    private const val CODE8 = 6
    private const val CODE9 = 10
    private const val CODE0 = 7
    private const val CODEEXT = 3
    private const val CODEHASH = 11

    // inicia o HAL e coloca o bit correspondente a K Ack a 0
    fun init() {
        HAL.init()
        HAL.clrBits(Kack)
    }

    const val NONE = 0.toChar()

    // le o que é escrito no teclado e devolve o que leu, caso não consiga ler nada devolve NONE
    private fun getKey(): Char {
        if (HAL.isBit(Kval)) {
            val c = when (HAL.readBits(K).shr(1)) {
                CODE1 -> '1'
                CODE2 -> '2'
                CODE3 -> '3'
                CODE4 -> '4'
                CODE5 -> '5'
                CODE6 -> '6'
                CODE7 -> '7'
                CODE8 -> '8'
                CODE9 -> '9'
                CODEEXT -> '*'
                CODE0 -> '0'
                CODEHASH -> '#'
                else -> NONE
            }
            HAL.setBits(Kack)
            while (HAL.isBit(Kval)) {
                Thread.sleep(sleepTime)
            }
            HAL.clrBits(Kack)
            return c
        }
        return NONE
    }

    // chama o getKey() até passar o tempo de timeout ou até ler uma tecla
    fun waitKey(timeout: Long): Char {
        val timeInit = System.currentTimeMillis()
        while (true) {
            val time = System.currentTimeMillis()
            val c = getKey()
            if (c != NONE) return c
            if (time - timeInit >= timeout) return NONE
        }
    }
}

fun main() {
    KBD.init()
    while (true) {
        val c = KBD.waitKey(KBD.waitTime)
        println(c)
    }
}
