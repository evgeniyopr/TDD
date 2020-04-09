//
//  TDDTests.swift
//  TDDTests
//
//  Created by Evgeniy Opryshko on 09.04.2020.
//  Copyright © 2020 Evgeniy Opryshko. All rights reserved.
//

import XCTest
@testable import TDD

class TDDTests: XCTestCase {
	
	var sut: ViewController!
	
	override func setUp() {
		super.setUp()
		sut = ViewController()
	}
	
	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testLowestVolumeShouldBeZero() {
		sut.setVolume(value: -100)
		
		let volume = sut.volume
		
		XCTAssert(volume == 0, "Lowes value should be equal 0.")
	}
	
	func testHighestVolumeShouldBe100() {
		sut.setVolume(value: 200)
		
		let volume = sut.volume
		
		XCTAssert(volume == 0, "Highest value should be equal 100.")
	}
	
	func testCharsInStringsAreTheSame() {
		// given
		let string1 = "qwerty"
		let string2 = "ytrewq"
		
		//when
		let bool = sut.charactersCampare(sringOne: string1, stringTwo: string2)
		
		//then
		XCTAssert(bool, "Characters should be the same in two strings")
	}
	
	func testCharsInStringsAreDifferent() {
		// given
		let string1 = "qwerty1"
		let string2 = "ytrewq"
		
		//when
		let bool = sut.charactersCampare(sringOne: string1, stringTwo: string2)
		
		//then
		XCTAssert(!bool, "Characters should be the different in two strings")
	}
}
