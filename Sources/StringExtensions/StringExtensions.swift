import Foundation

extension String {

	public var isNumeric: Bool {
		return Double(self) != nil
	}

	public var lines: [String] {
		return self.components(separatedBy: .newlines)
	}

	public func withPrefix(_ prefix: String) -> String {
		return self.hasPrefix(prefix) ? self : prefix + self
	}
	
}
