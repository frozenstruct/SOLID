//
//  KnifeSwitchMock.swift
//  SOLIDTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

final class KnifeSwitchMock: KnifeSwitchable {

	enum PeekableState {
		case lampOff, lampOn
	}

	private var lamp: Switchable

	var state: PeekableState = .lampOff

	init(with lamp: Switchable) {
		self.lamp = lamp
	}

	func switchLampOn() {
		lamp.switchOn()
		state = .lampOn
	}

	func switchLampOff() {
		lamp.switchOff()
		state = .lampOff
	}
}
