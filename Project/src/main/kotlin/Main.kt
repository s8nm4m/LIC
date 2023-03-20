import isel.leic.UsbPort

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

    val value = UsbPort.read() // 01000001
    UsbPort.write(value.or(mask)) // 01001111

}

fun clrBits(mask: Int){ //mask = 0000011

    val value = UsbPort.read() // 01001110
    val newMask = mask.inv() // 11111100
    UsbPort.write(value.and(newMask)) // 01001100

}

fun writeBits(mask: Int, value: Int){ // mask = 00001111 value = 00001001

    val value2 = UsbPort.read() // 01001101
    val newMask = mask.inv() // 11110000
    val newValue = value2.and(newMask) // 01000000
    UsbPort.write(value.or(newValue)) // 01001001

}

fun main(args: Array<String>) {
    while(true){
        val value = UsbPort.read()
        UsbPort.write(value)
        /* val hex = "0F"
        val mask = hex.toInt(16) */
    }
}