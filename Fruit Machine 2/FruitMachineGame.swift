//
//  FruitMachineGame.swift
//  Fruit Machine
//
//  Created by Karl Cridland on 26/08/2025.
//

class FruitMachineGame: GameProtocol {
    
    var player: Player?
    var slots: [SlotProtocol] = []
    var moneyValue: Int = 10
    
    
    init(_ slots: [SlotProtocol] = [Slot(), Slot(), Slot(), Slot()]) {
        self.slots = slots
    }
    
    func startGame(_ values: [SlotColour] = [], player: Player) throws {
        self.player = player
        print(player.wallet)
        if (player.wallet <= 0) {
            throw GameError.UserHasNoMoney
        }
        player.wallet -= 1
        moneyValue += 1
        slots.enumerated().forEach { (i, slot) in
            let colour = getValue(from: values, position: i)
            slot.selectColour(colour)
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
    
    func getValue(from values: [SlotColour], position: Int) -> SlotColour {
        if (values.count > position) {
            return values[position]
        }
        return SlotColour.allCases.randomElement()!
    }
    
    func playerWins() {
        moneyValue = 0
    }
    
    func playerLoses() {
        
    }
        
    func finishGame() {
        
    }
    
}

enum GameError: Error {
    case UserHasNoMoney
}
