//
//  WordleDataModel.swift
//  WordleClone
//
//  Created by Анна Лошакова on 28.09.2022.
//

import SwiftUI

class WordleDataModel: ObservableObject {
    
    @Published var guesses: [Guess] = []
    
    var keyColor = [String: Color]()
    
    init() {
        newGame()
    }
    
    // MARK: - Setup
    
    func newGame() {
        populateDefaults()
    }
    
    func populateDefaults() {
        guesses = []
        for index in 0...5 {
            guesses.append(Guess(index: index))
        }
        
        let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        for char in letters {
            keyColor[String(char)] = .unused
        }
    }
    
    // MARK: - Game Play
    
    func addToCurrentWord(_ letter: String) {
         
    }
    
    func enterWord() {
        
    }
    
    func removeLetterFromCurrrentWord() {
        
    }
}
