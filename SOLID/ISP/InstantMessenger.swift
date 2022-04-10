//
//  InstantMessenger.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol InstantMessengerService {

	func sendMessageWithPicture()
}

final class InstantMessenger: InstantMessengerService {

	private var messagingManager: MessagingService
	private var attachmentsManager: AttachmentsService

	init(_ messagingManager: MessagingService, _ attachmentsManager: AttachmentsManager) {
		self.messagingManager = messagingManager
		self.attachmentsManager = attachmentsManager
	}

	func sendMessageWithPicture() {
		attachmentsManager.attach()
		messagingManager.sendMessage()
	}
}
