fun main() {
    KBD.init()
    LCD.init()
    LCD.write("dieção drizzy")
    Thread.sleep(2000)
    LCD.clear()
    while (true) {
        val v = KBD.waitKey(2000)
        println(v)
        if (v != KBD.NONE) LCD.write(v)
    }
}