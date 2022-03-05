
import Foundation
import Swift

if (CommandLine.arguments.count > 1) {
    do {
        let text = try NSString(contentsOfFile: CommandLine.arguments[1], encoding: String.Encoding.utf8.rawValue)
        print(text)
    } catch {
        print("File not found")
    }
} else {
    print("File not found")
    exit(1)
}
