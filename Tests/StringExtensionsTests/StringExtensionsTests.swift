		import XCTest
		@testable import StringExtensions

		final class StringExtensionsTests: XCTestCase {

			func testWithPrefix_WhenPrefixIsPresent_OutputEqualsInput() {
				let prefix = "pre"
				let stringWithPrefix = "prefixed string"
				XCTAssertEqual(stringWithPrefix.withPrefix(prefix), stringWithPrefix, "The input and output should be identical.")
			}

			func testWithPrefix_WhenPrefixIsNotPresent_OutputEqualsPrefixPlusInput() {
				let prefix = "pre"
				let stringWithoutPrefix = "fixed string"
				let stringWithPrefix = "prefixed string"
				XCTAssertEqual(stringWithoutPrefix.withPrefix(prefix), stringWithPrefix, "The output should be the prefix plus the output.")
			}

		}
