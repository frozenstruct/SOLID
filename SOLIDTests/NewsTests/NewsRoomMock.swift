//
//  NewsRoomMock.swift
//  SOLIDTests
//
//  Created by Dmitry Aksyonov on 10.04.2022.
//

final class NewsRoomMock: NewsService {

	var newsMakers: [NewsMaker]

	var peekableNews = [String]()

	init(with newsMakers: [NewsMaker]) {
		self.newsMakers = newsMakers
	}

	/// Prints news from any object that can make new
	/// no modification of NewsRoom needed
	/// add more newsmakers as you go
	func makeNewsStorm() {
		let news = newsMakers.map { $0.makeBreakingNew() }
		peekableNews = news
	}

	func add(newsMaker: NewsMaker) {
		newsMakers.append(newsMaker)
	}
}
