private const val m = 0x40

object M {
    fun init() {
        HAL.init()
    }

    fun readM(): Boolean = HAL.isBit(m)
}