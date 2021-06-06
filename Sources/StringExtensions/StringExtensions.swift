import Foundation

extension String {

	var isNumeric: Bool {
		return Double(self) != nil
	}

	var lines: [String] {
		return self.components(separatedBy: .newlines)
	}

	func withPrefix(_ prefix: String) -> String {
		return self.hasPrefix(prefix) ? self : prefix + self
	}
	
}
