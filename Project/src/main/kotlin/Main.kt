fun main() {
    KBD.init()
    LCD.init()
    LCD.write("help ")
    Thread.sleep(2000)
//    LCD.clear()
    LCD.cursor(1,0)
    while (true) {
        val v = KBD.waitKey(2000)
        println(v)
        if (v != KBD.NONE) LCD.write(v)
    }
}