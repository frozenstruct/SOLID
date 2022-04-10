//
//  KnifeSwitch.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol KnifeSwitchable {

	func switchLampOn()
	func switchLampOff()
}

final class KnifeSwitch: KnifeSwitchable {

	private var lamp: Switchable

	init(with lamp: Switchable) {
		self.lamp = lamp
	}

	func switchLampOn() {
		lamp.switchOn()
	}

	func switchLampOff() {
		lamp.switchOff()
	}
}
