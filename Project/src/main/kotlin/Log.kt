import java.io.PrintWriter

object Log {
    private const val FILENAME = "Log File.txt"
    fun init(): HashSet<String> {
        return getLog()
    }

    // le e guarda num ArrayList o conteúdo do ficheiro Log File
    private fun getLog(): HashSet<String> {
        val log = HashSet<String>()
        val list = FileAccess.readFile(FILENAME)
        for (l in list) {
            log.add(l)
        }
        return log
    }

    // escreve o conteúdo do log no ficheiro Log File
    fun writeLog(log: HashSet<String>) {
        val writer = PrintWriter(FILENAME)
        for (l in log) {
            writer.println(l)
        }
        writer.close()
    }
}