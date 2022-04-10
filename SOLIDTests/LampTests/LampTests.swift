//
//  LampTests.swift
//  LampTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

import XCTest

final class LampTests: XCTestCase {

	var sut: LampMock!

	override func setUp() {
		super.setUp()

		sut = LampMock()
	}

	override func tearDown() {
		sut = nil

		super.tearDown()
	}

	func testLampSwitchesOn() {

		// Arrange

		let expectation = XCTestExpectation(description: "Lamp is lit.")

		// Act

		sut.switchOn()

		// Assert

		switch sut.state {
		case .on:
			expectation.fulfill()
		case .off:
			XCTFail("Lamp should be lit. For now it is off.")
		}
	}

	func testLampSwitchesOff() {

		// Arrange

		let expectation = XCTestExpectation(description: "Lamp is enjoying the void.")

		// Act

		sut.switchOff()

		// Assert

		switch sut.state {
		case .on:
			XCTFail("Lamp should be enjoying the void. For now it is on.")
		case .off:
			expectation.fulfill()
		}
	}
}
