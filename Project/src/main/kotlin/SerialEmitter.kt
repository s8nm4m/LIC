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
        println("send : $data")
        HAL.clrBits(SS)
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
//            print(b)
        }
        HAL.clrBits(SCLOCK)
        HAL.setBits(SS)
        Thread.sleep(1)
        println()
    }

    fun isBusy(): Boolean {
        return false
    }
}

fun main() {
    SerialEmitter.init()
    for (i in 31 downTo 0) {
        SerialEmitter.send(SerialEmitter.Destination.LCD, i)
    }
}
//0 faz
//1 .. 15 pisca
//16 .. 31 liga todos

