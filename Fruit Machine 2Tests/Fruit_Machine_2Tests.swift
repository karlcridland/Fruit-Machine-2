//
//  Fruit_Machine_2Tests.swift
//  Fruit Machine 2Tests
//
//  Created by Karl Cridland on 26/08/2025.
//

import XCTest
@testable import Fruit_Machine_2

final class Fruit_Machine_2Tests: XCTestCase {
    
    func testWinningGameWins() {
        let player = Player()
        let fruitMachine = FruitMachineGame([MockSlot(), MockSlot(), MockSlot(), MockSlot()])
        try? fruitMachine.startGame(player: player)
        XCTAssertTrue(fruitMachine.moneyValue == 0)
    }
    
    func testLosingGameLoses() {
        let player = Player()
        let fruitMachine = FruitMachineGame()
        try? fruitMachine.startGame([.blue, .black, .black, .black], player: player)
        XCTAssertTrue(fruitMachine.moneyValue != 0)
    }
    
    func testMoneyLoadedCorrectly() {
        let player = Player()
        let fruitMachine = FruitMachineGame()
        fruitMachine.moneyValue = 10
        try? fruitMachine.startGame([.blue, .black, .black, .black], player: player)
        XCTAssertEqual(fruitMachine.moneyValue, 11)
    }
    
    func testUserHasNoMoneyToPlay() {
        let player = Player()
        player.wallet = 0
        let fruitMachine = FruitMachineGame()
        do {
            try fruitMachine.startGame(player: player)
        }
        catch {
            
        }
    }

}

class MockSlot: SlotProtocol {
    
    let shouldWin: Bool
    
    init(_ shouldWin: Bool = false) {
        self.shouldWin = shouldWin
    }
    
    var colour: SlotColour?
    
    func selectColour(_ colour: SlotColour?) {
        self.colour = .black
    }
    
}
