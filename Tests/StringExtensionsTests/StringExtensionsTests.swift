		import XCTest
		@testable import StringExtensions

		final class StringExtensionsTests: XCTestCase {

			func testWithPrefix_WhenPrefixIsPresent_ResultEqualsInput() {
				let prefix = "pre"
				let stringWithPrefix = "prefixed string"
				let result = stringWithPrefix.withPrefix(prefix)
				XCTAssertEqual(result, stringWithPrefix, "Expected '\(stringWithPrefix)' but received '\(result)').")
			}

			func testWithPrefix_WhenPrefixIsNotPresent_ResultEqualsPrefixPlusInput() {
				let prefix = "pre"
				let stringWithoutPrefix = "fixed string"
				let stringWithPrefix = "prefixed string"
				let result = stringWithoutPrefix.withPrefix(prefix)
				XCTAssertEqual(result, stringWithPrefix, "Expected '\(stringWithPrefix)' but received '\(result)').")
			}

			func testIsNumeric_WhenStringIsValidAsDouble_ShouldReturnTrue() {
				let string = "123456"
				XCTAssertTrue(string.isNumeric, "isNumeric should return TRUE for \(string)")
			}

			func testIsNumeric_WhenStringIsInvalidAsDouble_ShouldReturnFalse() {
				let string = "abc"
				XCTAssertFalse(string.isNumeric, "isNumeric should return FALSE for \(string)")
			}
		}
