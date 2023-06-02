object SerialEmitter {

    enum class Destination { LCD, DOOR }
    private const val SLEEPTIME = 1L
    private const val SSLCD = 0x02
    private const val SDX = 0x04
    private const val SCLOCK = 0x08
    private const val SSDOOR = 0x10
    private const val busy = 0x20
    private const val MAX_LENGTH = 5
    private const val OFF = 0x00

    // inicia o HAL e coloca os bits relativos ao SS tanto do lcd como da door a 1 (pois são active low)
    fun init() {
        HAL.init()
        HAL.setBits(SSLCD)
        HAL.setBits(SSDOOR)
    }

    // escreve 5 bits de informação, 1 a 1, no usbport
    fun send(addr: Destination, data: Int) {
        val mask = if (addr == Destination.DOOR) SSDOOR else SSLCD
        HAL.clrBits(mask)
        for (i in 0 until MAX_LENGTH) {
            HAL.clrBits(SCLOCK)
            val b = data.and(1.shl(i))
            if (b == OFF) {
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

    // verifica a condição do sinal busy
    fun isBusy() = HAL.isBit(busy)
}

fun main() {
    SerialEmitter.init()
    for (i in 31 downTo 0) {
        SerialEmitter.send(SerialEmitter.Destination.LCD, i)
    }
}


