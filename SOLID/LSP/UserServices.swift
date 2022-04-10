//
//  UserService.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol UserService {

	func fetch(user: String, _ completion: @escaping () -> Void)
}

final class DatabaseService: UserService {

	func fetch(user: String, _ completion: @escaping () -> Void) {
		print("Database request here")
		completion()
	}
}

final class APIUserService: UserService {

	func fetch(user: String, _ completion: @escaping () -> Void) {
		print("API Request here")
		completion()
	}
}
