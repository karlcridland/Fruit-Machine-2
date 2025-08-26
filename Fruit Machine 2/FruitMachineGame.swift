//
//  FruitMachineGame.swift
//  Fruit Machine
//
//  Created by Karl Cridland on 26/08/2025.
//

class FruitMachineGame: GameProtocol {
    
    var player: Player?
    var slots: [Slot] = [Slot(), Slot(), Slot(), Slot()]
    var moneyValue: Int = 0
    
    func startGame() {
        slots.forEach { slot in
            slot.selectColour()
        }
        
        let colours = slots.map({$0.colour})
        let unique_colours = Set(colours)
        if (unique_colours.count == 1) {
            playerWins()
        }
        else {
            playerLoses()
        }
        
    }
    
    func playerWins() {
        
    }
    
    func playerLoses() {
        
    }
        
    func finishGame() {
        
    }
    
}
