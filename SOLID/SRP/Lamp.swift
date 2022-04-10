//
//  JuniorDeveloper.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol Switchable {

	func switchOn()
	func switchOff()
}

final class Lamp: Switchable {

	private enum State {

		case switchedOn, switchedOff
	}

	private var state: State = .switchedOff

	func switchOn() {
		state = .switchedOn
		print("Lamp is lit! Let there be light! 💡")
	}

	func switchOff() {
		state = .switchedOff
		print("Lamp is off... Enjoy the void... 🌚")
	}
}
