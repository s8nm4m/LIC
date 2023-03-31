object KBD {
    private const val Kval = 1
    private const val Kack = 1
    private const val K = 30

    fun init() {
        HAL.init()
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
                Thread.sleep(10)
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
