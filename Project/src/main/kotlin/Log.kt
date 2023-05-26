import java.io.PrintWriter

object Log {
    private const val FILENAME = "Log File.txt"
    fun init(): ArrayList<List<String>> {
        return getLog()
    }

    fun getLog(): ArrayList<List<String>> {
        val log = ArrayList<List<String>>()
        val list = FileAccess.readFile(FILENAME)
        for (user in list) {
            val a = user.split(";")
            log.add(a.dropLast(1))
        }
        return log
    }

    fun writeLog(log: ArrayList<List<String>>) {
        val writer = PrintWriter(FILENAME)
        for (l in log) {
            writer.println(l)
        }
        writer.close()
    }
}