//
//  UserManager.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol UserManagerProtocol {

	func fetchUserData(username: String, _ completion: @escaping () -> Void)
}

final class UserManager: UserManagerProtocol {

	/// `DIP` here
	private var service: UserService

	init(with service: UserService) {
		self.service = service
	}

	func fetchUserData(username: String, _ completion: @escaping () -> Void) {
		service.fetch(user: "user") {
			completion()
		}
	}
}
