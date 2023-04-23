import isel.leic.UsbPort

object HAL {
    private var lastState = 0
    fun init() {
        UsbPort.write(0)
        lastState = 0
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