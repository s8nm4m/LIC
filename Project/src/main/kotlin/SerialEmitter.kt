object SerialEmitter {

    enum class Destination { LCD, DOOR }
    private const val SLEEPTIME : Long = 1
    private const val SSLCD = 0x02
    private const val SDX = 0x04
    private const val SCLOCK = 0x08
    private const val SSDOOR = 0x10
    private const val busy = 0x20
    private const val MAX_LENGTH = 5
    fun init() {
        HAL.init()
        HAL.setBits(SSLCD)
        HAL.setBits(SSDOOR)
    }

    fun send(addr: Destination, data: Int) {
        val mask = if (addr == Destination.DOOR) SSDOOR else SSLCD
        HAL.clrBits(mask)
        for (i in 0 until MAX_LENGTH) {
            HAL.clrBits(SCLOCK)
            val b = data.and(1.shl(i))
            if (b == 0) {
                HAL.clrBits(SDX)
            } else {
                HAL.setBits(SDX)
            }
            HAL.setBits(SCLOCK)
        }
        HAL.clrBits(SCLOCK)
        HAL.setBits(mask)
        Thread.sleep(SLEEPTIME)
    }

    fun isBusy() = HAL.isBit(busy)
}

fun main() {
    SerialEmitter.init()
    for (i in 31 downTo 0) {
        SerialEmitter.send(SerialEmitter.Destination.LCD, i)
    }
}


