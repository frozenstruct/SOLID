//
//  NewsRoom.swift
//  SOLID
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

protocol NewsService {

	func makeNewsStorm()
	func add(newsMaker: NewsMaker)
}

final class NewsRoom: NewsService {

	private var newsMakers: [NewsMaker]

	init(with newsMakers: [NewsMaker]) {
		self.newsMakers = newsMakers
	}

	/// Prints news from any object that can make new
	/// no modification of NewsRoom needed
	/// add more newsmakers as you go
	func makeNewsStorm() {
		let news = newsMakers.map { $0.makeBreakingNew() }
		print(news)
	}

	func add(newsMaker: NewsMaker) {
		newsMakers.append(newsMaker)
	}
}
