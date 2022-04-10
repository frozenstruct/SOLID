//
//  API.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol API {

	func makeHTTPGETRequest()
}

final class APIManager: API {

	func makeHTTPGETRequest() {
		print("GET request made")
	}
}
