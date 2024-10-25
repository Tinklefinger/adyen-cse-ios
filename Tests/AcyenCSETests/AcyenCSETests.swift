import XCTest
@testable import AcyenCSE

final class AcyenCSETests: XCTestCase {
	func test_card_encryption() throws {
		let card = ADYCard()
		card.number = "4111111111111111"
		card.generationtime = .now
		card.cvc = "737"
		card.holderName = "Some Name"
		card.expiryMonth = "03"
		card.expiryYear = "30"
		
		let data = card.encode()
		
		XCTAssertNotNil(data)
	}
}
