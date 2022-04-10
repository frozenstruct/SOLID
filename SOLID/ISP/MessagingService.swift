//
//  MessagingService.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol MessagingService {

	func getMessages()
	func sendMessage()
}

final class MessagingManager: MessagingService {

	func getMessages() {
		print("some messages were received")
	}

	func sendMessage() {
		print("some message was sent")
	}
}
