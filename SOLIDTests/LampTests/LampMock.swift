//
//  Lamp+PublicState.swift
//  SOLIDTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

final class LampMock: Switchable {

	enum State {

		case off, on
	}

	var state: State = .off

	func switchOn() {
		state = .on
	}

	func switchOff() {
		state = .off
	}
}
