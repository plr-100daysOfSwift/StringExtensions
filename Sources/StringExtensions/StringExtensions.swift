
extension String {

	var isNumeric: Bool {
		return Double(self) != nil
	}

	func withPrefix(_ prefix: String) -> String {
		return self.hasPrefix(prefix) ? self : prefix + self
	}
	
}
