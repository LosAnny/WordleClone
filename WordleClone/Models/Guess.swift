//
//  Guess.swift
//  WordleClone
//
//  Created by Анна Лошакова on 28.09.2022.
//

import SwiftUI

struct Guess {
    
    let index: Int
    var word = "     "
    var bgColors = [UIColor](repeating: .systemBackground, count: 5)
    var cardFlipped = [Bool](repeating: false, count: 5)
    var guessLetters: [String] {
        word.map { String($0) }
    }
}
