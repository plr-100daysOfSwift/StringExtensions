
extension String {

	func withPrefix(_ prefix: String) -> String {
		return self.hasPrefix(prefix) ? self : prefix + self
	}
	
}
