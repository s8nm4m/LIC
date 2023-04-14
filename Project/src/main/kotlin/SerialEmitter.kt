object SerialEmitter {
    enum class Destination { LCD, DOOR }

    fun init() {

    }

    fun send(addr: Destination, data: Int) {

    }

    fun isBusy(): Boolean {
        return false
    }
}