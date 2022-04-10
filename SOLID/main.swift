//
//  main.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

import Foundation

// MARK: SRP

print("----------------------------------")
print("Demonstrating SRP")

/// Lamp  manages its state privately
let lamp = Lamp()

/// Knifeswitch can only work with lamps public methods
let knifeSwitch = KnifeSwitch(with: lamp)

// Action

knifeSwitch.switchLampOn()
knifeSwitch.switchLampOff()

print("----------------------------------\n")

// MARK: OCP

print("----------------------------------")
print("Demonstrating OCP")

// Larry and Oprah sitting in the bar...

let larry = LarryKing()
let oprah = OprahWinfrey()

// Let's make some breaking news!

let newsRoom = NewsRoom(with: [larry, oprah])
newsRoom.makeNewsStorm()

// Suddenly senior Vladimir Soloviev sets in

final class VladimirSoloviev: NewsMaker {

	func makeBreakingNew() -> String {
		"RUSSIA IS GR8, FOK U"
	}
}

let solovushka = VladimirSoloviev()

// No problem with that, welcome!

newsRoom.add(newsMaker: solovushka)

// Still ready to break

newsRoom.makeNewsStorm()

print("----------------------------------\n")

// MARK: LSP

print("----------------------------------")
print("Demonstrating LSP")

// User services subclassing UserService protocol

let dbUserService = DatabaseService()
let apiUserService = APIUserService()

// User managers accepting every instance of UserService subclass

let userManager0 = UserManager(with: dbUserService)
let userManager1 = UserManager(with: apiUserService)

// Subclasses work fine

userManager0.fetchUserData(username: "kek") {
	print("UserManager0 fetched data from DB")
}
userManager1.fetchUserData(username: "kek") {
	print("UserManager0 fetched data from API")
}

print("----------------------------------\n")

// MARK: ISP

print("----------------------------------")
print("Demonstrating ISP")

let attachmentManager = AttachmentsManager()
let messagingManager = MessagingManager()
let im = InstantMessenger(messagingManager, attachmentManager)

im.sendMessageWithPicture()

print("----------------------------------\n")
