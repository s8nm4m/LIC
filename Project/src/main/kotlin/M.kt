private const val m = 0x40

object M {
    fun init() {
        HAL.init()
    }

    // verifica se a chave de manutenção está ligada
    fun isM(): Boolean = HAL.isBit(m)
}