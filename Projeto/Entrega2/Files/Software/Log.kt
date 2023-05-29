import java.io.PrintWriter

object Log {
    private const val FILENAME = "Log File.txt"
    fun init(): ArrayList<List<String>> {
        return getLog()
    }

    // le e guarda num ArrayList o conteúdo do ficheiro Log File
    fun getLog(): ArrayList<List<String>> {
        val log = ArrayList<List<String>>()
        val list = FileAccess.readFile(FILENAME)
        for (user in list) {
            val a = user.split(";")
            log.add(a.dropLast(1))
        }
        return log
    }

    // escreve o conteúdo do log no ficheiro Log File
    fun writeLog(log: ArrayList<List<String>>) {
        val writer = PrintWriter(FILENAME)
        for (l in log) {
            writer.println(l)
        }
        writer.close()
    }
}