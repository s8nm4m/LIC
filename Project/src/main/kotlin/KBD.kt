object KBD {
    private const val Kval = 0x01
    private const val Kack = 0x01
    private const val K = 0x1E
    const val waitTime : Long = 2000
    private const val sleepTime : Long = 10

    fun init() {
        HAL.init()
        HAL.clrBits(Kack)
    }

    const val NONE = 0.toChar()

    fun getKey(): Char {
        if (HAL.isBit(Kval)) {
            val c = when (HAL.readBits(K).shr(1)) {
                0 -> '1'
                1 -> '4'
                2 -> '7'
                3 -> '*'
                4 -> '2'
                5 -> '5'
                6 -> '8'
                7 -> '0'
                8 -> '3'
                9 -> '6'
                10 -> '9'
                11 -> '#'
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
