fun main() {
    DoorMechanism.init()
    KBD.init()
    LCD.init()
    LCD.write("wait ")
    Thread.sleep(2000)
    LCD.cursor(1, 0)
    var pass = ""
    while (true) {
        val v = KBD.waitKey(2000)
        println(v)
        if (v != KBD.NONE) {
            LCD.write(v)
            pass += v
            println(pass)
            if (pass.length >= 4 && pass != "1234") {
                LCD.clear()
                LCD.write("Wrong Password")
                pass = ""
                Thread.sleep(2000)
                LCD.clear()
            }
            if (pass == "1234") {
                DoorMechanism.open(3)
                Thread.sleep(2000)
                println("open1")
                while (!DoorMechanism.finished()) {
                    Thread.sleep(1)
                    println("open2")
                }
                DoorMechanism.close(2)
                Thread.sleep(2000)
                println("close1")
                while (!DoorMechanism.finished()) {
                    Thread.sleep(1)
                    println("close2")
                }
                pass = ""
            }
        } else {
            LCD.clear()
            LCD.write("timed out.")
            Thread.sleep(2000)
            LCD.clear()
        }
    }
}