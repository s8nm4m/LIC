import isel.leic.UsbPort


object HAL {
    var lastState = 0
    fun init() {
        UsbPort.write(0)
        lastState = 0
    }

    fun readBits(mask: Int) : Int{ // mask = 00001111
        val value = UsbPort.read() // 00011011
        return value.and(mask) // 00001011
    }

    fun isBit(mask: Int) : Boolean{  // mask = 00000001
        val value = UsbPort.read() // 00000010
        val newValue = value.and(mask) // 00000000
        if(newValue == 0 ){ // reads 0, so false
            return false
        }
        return true
    }

    fun setBits(mask: Int){ // mask = 00001111
        val value = lastState.or(mask) // 01000001
        UsbPort.write(value) // 01001111
        lastState = value
    }

    fun clrBits(mask: Int){ //mask = 0000011
        val value = lastState // 01001110
        val newMask = mask.inv() // 11111100
        UsbPort.write(value.and(newMask)) // 01001100
        lastState = value.and(newMask)
    }

    fun writeBits(mask: Int, value: Int){ // mask = 00001111 value = 00001001
        val value2 = UsbPort.read() // 01001101
        val newMask = mask.inv() // 11110000
        val newValue = value2.and(newMask) // 01000000
        UsbPort.write(value.or(newValue)) // 01001001
        lastState = value2.or(newValue)
    }
}