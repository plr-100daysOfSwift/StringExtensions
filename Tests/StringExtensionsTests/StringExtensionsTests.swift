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
				let allDigits = "123456"
				XCTAssertTrue(allDigits.isNumeric, "isNumeric should return TRUE for \(allDigits)")

				let allDigitsDecimal = "1234.56"
				XCTAssertTrue(allDigitsDecimal.isNumeric, "isNumeric should return TRUE for \(allDigitsDecimal)")

				let signed = "-123.45"
				XCTAssertTrue(signed.isNumeric, "isNumeric should return TRUE for \(allDigitsDecimal)")

				let hexadecimal = "0x1c.6"
				XCTAssertTrue(hexadecimal.isNumeric, "isNumeric should return TRUE for \(hexadecimal)")

				let exponent = "2837.5e-2"
				XCTAssertTrue(exponent.isNumeric, "isNumeric should return TRUE for \(exponent)")

				let infinity = "inf"
				XCTAssertTrue(infinity.isNumeric, "isNumeric should return TRUE for \(infinity)")

				let nan = "-nan"
				XCTAssertTrue(nan.isNumeric, "isNumeric should return TRUE for \(nan)")
			}

			func testIsNumeric_WhenStringIsInvalidAsDouble_ShouldReturnFalse() {

				let string = "abc"
				XCTAssertFalse(string.isNumeric, "isNumeric should return FALSE for \(string)")

				let stringContainingDigits = "abc123"
				XCTAssertFalse(stringContainingDigits.isNumeric, "isNumeric should return FALSE for \(stringContainingDigits)")

				let whitespace = " 123456" // Includes whitespace
				XCTAssertFalse(whitespace.isNumeric, "isNumeric should return FALSE for \(whitespace)")

				let signedInvalid = "±2.0" // Invalid character
				XCTAssertFalse(signedInvalid.isNumeric, "isNumeric should return FALSE for \(signedInvalid)")

			}
		}
