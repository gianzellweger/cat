import kotlin.system.exitProcess
import java.io.File
import java.io.InputStream
import kotlin.String

fun readFile(fileName: String): String {
    return File(fileName).readText(Charsets.UTF_8)
}

fun main(args: Array<String>) {
    if (args.size > 0) {
        var text = readFile(args[0])
        println(text)
    } else {
        println("File not found")
        exitProcess(1)
    }
}
