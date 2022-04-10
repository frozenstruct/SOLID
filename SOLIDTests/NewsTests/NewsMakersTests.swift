//
//  NewsMakersTests.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

import XCTest

final class NewsMakersTests: XCTestCase {

	var sut: [NewsMaker]!
	var oprah: OprahWinfrey!
	var larry: LarryKing!

	override func setUp() {
		super.setUp()

		oprah = OprahWinfrey()
		larry = LarryKing()
		sut = [oprah, larry]
	}

	override func tearDown() {
		sut = nil
		oprah = nil
		larry = nil

		super.tearDown()
	}

	func testMakeBreakingNew() {

		// Arrange

		var news = [String]()

		// Act

		sut.forEach {
			news.append($0.makeBreakingNew())
		}

		// Assert

		news.forEach {
			let isString = type(of: $0) == String.self
			XCTAssertEqual(isString, true)
		}
	}
}
