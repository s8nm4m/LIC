import isel.leic.UsbPort

fun main() {
    while (true) {
        println(readBits(15))
        println(isBit(8))
        setBits(127)
        println(UsbPort.read())
        clrBits(630)
        println(UsbPort.read())
        writeBits(127, 31)
        println(UsbPort.read())
    }
}

// done
fun readBits(mask: Int): Int {
    val state = unmask(UsbPort.read())
    val unmasked = unmask(mask)
    var int = 0
    for ((idx, i) in (state.size - 1 downTo 0).withIndex()) {
        int += state[i] * power(2, idx) * unmasked[i]
    }
    return int
}

// auxiliar
fun power(val1: Int, val2: Int): Int {
    if (val2 == 0) return 1
    var i = val1
    for (a in 1 until val2) {
        i *= val1
    }
    return i
}

// turn int to binary through IntArray
fun unmask(mask: Int): IntArray {
    val state = IntArray(8)
    var value = mask
    var idx = state.size - 1
    while (idx >= 0) {
        val rest = value % 2
        state[idx] = rest
        value /= 2
        if (value == 0) {
            break
        }
        idx--
    }
    return state
}

// done
fun isBit(mask: Int): Boolean {
    val unmasked = unmask(mask)
    val state = unmask(UsbPort.read())
    for (i in state.indices) {
        if (state[i] == unmasked[i] && state[i] == 1) return true
    }
    return false
}

// done
fun setBits(mask: Int) {
    val state = unmask(UsbPort.read())
    val unmasked = unmask(mask)
    for (i in unmasked.indices) {
        if (unmasked[i] == 1) {
            state[i] = 1
        }
    }
    UsbPort.write(mask(state))
}

// turn binary to int through IntArray
fun mask(state: IntArray): Int {
    var int = 0
    for ((idx, i) in (state.size - 1 downTo 0).withIndex()) {
        int += state[i] * power(2, idx)
    }
    return int
}

// done
fun clrBits(mask: Int) {
    val state = unmask(UsbPort.read())
    val unmasked = unmask(mask)
    for (i in unmasked.indices) {
        if (unmasked[i] == 1) {
            state[i] = 0
        }
    }
    UsbPort.write(mask(state))
}

// done
fun writeBits(mask: Int, value: Int) {
    val state = unmask(UsbPort.read())
    val unmasked = unmask(mask)
    val v = unmask(value)
    for (i in state.indices) {
        if (unmasked[i] == 1) {
            state[i] = v[i]
        }
    }
}