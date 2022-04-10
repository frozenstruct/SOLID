//
//  AttachmentsService.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol AttachmentsService {

	func compress()
	func attach()
}

final class AttachmentsManager: AttachmentsService {

	func compress() {
		print("compressed")
	}

	func attach() {
		compress()
		print("attached")
	}
}
