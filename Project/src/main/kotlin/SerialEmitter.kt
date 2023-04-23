object SerialEmitter {
    enum class Destination { LCD, DOOR }

    private const val SS = 2
    private const val SDX = 4
    private const val SCLOCK = 8
    fun init() {
        HAL.init()
        HAL.setBits(SS)
    }

    fun send(addr: Destination, data: Int) {
        HAL.clrBits(SS)
        for (i in 0 until 5) {
            HAL.clrBits(SCLOCK)
            val mask = 1.shl(i)
//            println("mask = $mask")
            val b = data.and(mask)
//            println(b)
            if (b == 0)
                HAL.clrBits(SDX)
            else
                HAL.setBits(SDX)
            HAL.setBits(SCLOCK)
        }
        HAL.clrBits(SCLOCK)
        HAL.setBits(SS)
    }

    fun isBusy(): Boolean {
        return false
    }
}

fun main() {
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.LCD, 7)
}