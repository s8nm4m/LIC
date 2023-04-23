fun main() {
    SerialEmitter.init()
    LCD.init()
    LCD.write("wait ")
    Thread.sleep(2000)
    LCD.cursor(1, 0)
    while (true) {
        val v = KBD.waitKey(2000)
        println(v)
        if (v != KBD.NONE) LCD.write(v)
        else {
            LCD.clear()
            LCD.write("timed out.")
            Thread.sleep(2000)
            LCD.clear()
        }
    }
}