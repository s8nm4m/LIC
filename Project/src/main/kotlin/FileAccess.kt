import java.io.BufferedReader
import java.io.FileReader
import java.io.PrintWriter

object FileAccess {

    // le o conteúdo de um ficheiro txt
    fun readFile(name: String): HashSet<String> {
        val reader = BufferedReader(FileReader(name))
        val list = HashSet<String>()
        var line: String?
        line = reader.readLine()
        while (line != null) {
            list.add(line)
            line = reader.readLine()
        }
        return list
    }

    // escreve o conteúdo do ‘output’ num ficheiro txt
    fun writeFile(name: String, output: ArrayList<String>) {
        val writer = PrintWriter(name)
        for (i in output) {
            writer.println(i)
        }
        writer.close()
    }
}