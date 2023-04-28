object SerialEmitter {
    enum class Destination { LCD, DOOR }

    private const val SSLCD = 2
    private const val SDX = 4
    private const val SCLOCK = 8
    private const val SSDOOR = 16
    private const val busy = 32
    fun init() {
        HAL.init()
        HAL.setBits(SSLCD)
        HAL.setBits(SSDOOR)
    }

    fun send(addr: Destination, data: Int) {
        val mask = if (addr == Destination.DOOR) SSDOOR else SSLCD
//        println("send : $data")
        HAL.clrBits(mask)
        for (i in 0 until 5) {
            HAL.clrBits(SCLOCK)
            val b = data.and(1.shl(i))
            if (b == 0) {
                HAL.clrBits(SDX)
//                print(0)
            } else {
                HAL.setBits(SDX)
//                print(1)
            }
            HAL.setBits(SCLOCK)
        }
        HAL.clrBits(SCLOCK)
        HAL.setBits(mask)
        Thread.sleep(1)
//        println()
    }

    fun isBusy() = HAL.isBit(busy)
}

fun main() {
    SerialEmitter.init()
    for (i in 31 downTo 0) {
        SerialEmitter.send(SerialEmitter.Destination.LCD, i)
    }
}


