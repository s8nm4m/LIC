object M {
    private const val m = 0x40
    fun init() {
        HAL.init()
    }

    // verifica se a chave de manutenção está ligada
    fun isM() = HAL.isBit(m)
}