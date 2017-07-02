//
//  main.swift
//  Trivia
//
//  Created by Oliver Eikemeier on 13.10.15.
//  Copyright © 2015 Legacy Coderetreat. All rights reserved.
//

import Foundation
import GameKit

let dataSeed = Data(bytes: [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
let randomSource = GKARC4RandomSource.init(seed: dataSeed)

var notAWinner: Bool

let aGame = Game()

aGame.add("Chet")
aGame.add("Pat")
aGame.add("Sue")

repeat {
    aGame.roll(randomSource.nextInt(upperBound: 5) + 1)
    
    if (randomSource.nextInt(upperBound: 9) == 7) {
        notAWinner = aGame.wrongAnswer()
    } else {
        notAWinner = aGame.wasCorrectlyAnswered()
    }
    
    
    
} while (notAWinner)
