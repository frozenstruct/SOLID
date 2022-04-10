//
//  NewsMaker.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol NewsMaker {

	func makeBreakingNew() -> String
}

final class LarryKing: NewsMaker {

	func makeBreakingNew() -> String {
		"IT HAS DROWNED"
	}
}

final class OprahWinfrey: NewsMaker {

	func makeBreakingNew() -> String {
		"Turn your wounds into wisdom"
	}
}
