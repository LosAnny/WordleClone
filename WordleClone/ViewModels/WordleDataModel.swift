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
    var selectedWord = ""
    var currentWord = ""
    var tryIndex = 0
    var inPlay = false
    
    var gameStarted: Bool {
        !currentWord.isEmpty || tryIndex > 0
    }
    
    var disabledKeys: Bool {
        !inPlay || currentWord.count == 5
    }
    
    init() {
        newGame()
        inPlay = true
    }
    
    // MARK: - Setup
    
    func newGame() {
        populateDefaults()
        selectedWord = Global.commonWords.randomElement()!
        currentWord = ""
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
        currentWord += letter
        updateRow()
    }
    
    func enterWord() {
        if verifyWord() {
            print("Valid word")
        } else {
            print("Invalid")
        }
    }
    
    func removeLetterFromCurrrentWord() {
        currentWord.removeLast()
        updateRow()
    }
    
    func updateRow() {
        let guessWord = currentWord.padding(toLength: 5, withPad: " ", startingAt: 0)
        guesses[tryIndex].word = guessWord
    }
    
    // Обращение к словарю телефона
    func verifyWord() -> Bool {
        UIReferenceLibraryViewController.dictionaryHasDefinition(forTerm: currentWord)
    }
}
