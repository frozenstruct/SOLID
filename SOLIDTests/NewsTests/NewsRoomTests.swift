//
//  NewsRoomTests.swift
//  SOLIDTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

import XCTest

final class NewsRoomTests: XCTestCase {

	var sut: NewsRoomMock!
	var oprah: OprahWinfrey!
	var larry: LarryKing!

	override func setUp() {
		super.setUp()

		oprah = OprahWinfrey()
		larry = LarryKing()
		sut = NewsRoomMock(with: [oprah])
	}

	override func tearDown() {
		sut = nil
		oprah = nil
		larry = nil

		super.tearDown()
	}

	func testMakeNewsStorm() {

		// Arrange

		let expectation = XCTestExpectation(description: "There is one new of type String")

		// Act

		sut.makeNewsStorm()

		// Assert

		if sut.peekableNews.count == 1,
		   let new = sut.peekableNews.first,
		   type(of: new) == String.self {
			expectation.fulfill()
		} else {
			XCTFail()
		}
	}

	func testAddNewsMaker() {
		// Arrange

		let expectation = XCTestExpectation(description: "There is one new of type String")

		// Act

		sut.add(newsMaker: larry)

		// Assert

		if sut.newsMakers.count == 2 {
			expectation.fulfill()
		} else {
			XCTFail()
		}
	}
}
