import UIKit

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
}
var Quotes = "    Truth is nearly pure and not simple   "
let trimmed = Quotes.trimmingCharacters(in: .whitespacesAndNewlines)
Quotes.trim()
