//
//  ViewController.swift
//  TDD
//
//  Created by Evgeniy Opryshko on 09.04.2020.
//  Copyright © 2020 Evgeniy Opryshko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	private(set) var volume = 0
	
	func setVolume(value: Int) {
		volume = min(max(volume, 0), 100)
	}
	
	func charactersCampare(sringOne: String, stringTwo: String) -> Bool {
		return Set(sringOne) == Set(stringTwo)
	}
}

