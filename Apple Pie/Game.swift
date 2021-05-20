//
//  Game.swift
//  Apple Pie
//
//  Created by Philip on 26.02.2021.
//

import Foundation

struct Game {
    var word:String
    var incorrectMovesRemaining:Int
    var guessedLetters: [Character]
    
    
    mutating func playerGuessed(letter: Character) {
        guessedLetters.append(letter)
        if !word.contains(letter) {
            incorrectMovesRemaining -= 1
        }
    }
    
    var formattedWord:String {
        var guessedWord = ""
        for letter in word { // проверка для каждой буквы отгадываемого слова, есть ли в массиве выбранных нами букв (в этот массив буква добавляется после каждого нажатия кнопки) каждая конкретная буква отгадываемого слова по порядку. Если нет - прочерк, если есть - пишется буква и переходит к следующей букве отгадываемого слова по порядку
            
            if guessedLetters.contains(letter) {
                guessedWord += "\(letter)"
            } else {
                guessedWord += "_"
            }
        }
        return guessedWord
    }
    
    
    
}
