//
//  KnifeSwitchTests.swift
//  SOLIDTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

import XCTest

final class KnifeSwitchTests: XCTestCase {

	var sut: KnifeSwitchMock!

	var lamp: LampMock!

	override func setUp() {
		super.setUp()

		lamp = LampMock()
		sut = KnifeSwitchMock(with: lamp)
	}

	override func tearDown() {
		lamp = nil
		sut = nil

		super.tearDown()
	}

	func testKnifeSwitchTogglesLampOn() {

		// Arrange

		let expectation = XCTestExpectation(description: "Lamp is on")

		// Act

		sut.switchLampOn()

		// Assert

		switch sut.state {
		case .lampOn:
			expectation.fulfill()
		case .lampOff:
			XCTFail()
		}
	}

	func testKnifeSwitchTogglesLampOff() {

		// Arrange

		let expectation = XCTestExpectation(description: "Lamp is off")

		// Act
		
		sut.switchLampOff()

		// Assert

		switch sut.state {
		case .lampOn:
			XCTFail()
		case .lampOff:
			expectation.fulfill()
		}
	}
}
