import isel.leic.UsbPort

object HAL {
    private var lastState = 0
    private var initialize = false
    fun init() {
        if (!initialize) {
            UsbPort.write(0)
            lastState = 0
            initialize = true
        }
    }

    fun readBits(mask: Int) = UsbPort.read().and(mask)

    fun isBit(mask: Int) = UsbPort.read().and(mask) != 0

    fun setBits(mask: Int) {
        lastState = lastState.or(mask)
        UsbPort.write(lastState)
    }

    fun clrBits(mask: Int) {
        lastState = lastState.and(mask.inv())
        UsbPort.write(lastState)
    }

    fun writeBits(mask: Int, value: Int) {
        lastState = value.or(lastState.and(mask.inv()))
        UsbPort.write(lastState)
    }
}

fun main() {
    HAL.init()
    println(HAL.isBit(8))
    HAL.writeBits(8, 7)
    println(HAL.readBits(8))
    HAL.clrBits(2)
    println(HAL.readBits(2))
    HAL.setBits(0)
    println(HAL.readBits(0))

}