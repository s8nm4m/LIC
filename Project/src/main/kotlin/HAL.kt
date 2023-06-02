import isel.leic.UsbPort

object HAL {
    private const val OFF = 0x00
    private const val INIT_STATE = 0x00
    private var lastState = INIT_STATE
    private var initialize = false

    // inicia o usbport a 0 e atualiza o lastState para 0
    fun init() {
        if (!initialize) {
            UsbPort.write(INIT_STATE)
            lastState = INIT_STATE
            initialize = true
        }
    }

    // le o(s) bit(s) indicado(s) na máscara
    fun readBits(mask: Int) = UsbPort.read().and(mask)

    // verifica se o bit indicado na máscara está on ou off
    fun isBit(mask: Int) = UsbPort.read().and(mask) != OFF

    // coloca o(s) bit(s) indicado(s9 na máscara a on
    fun setBits(mask: Int) {
        lastState = lastState.or(mask)
        UsbPort.write(lastState)
    }

    // coloca o(s) bit(s) indicado(s9 na máscara a off
    fun clrBits(mask: Int) {
        lastState = lastState.and(mask.inv())
        UsbPort.write(lastState)
    }

    // coloca o valor indicado em value no(s) bit(s) indicado(s) na máscara
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