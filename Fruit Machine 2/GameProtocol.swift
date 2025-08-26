//
//  GameProtocol.swift
//  Fruit Machine
//
//  Created by Karl Cridland on 26/08/2025.
//

protocol GameProtocol {

    var player: Player? { get set }
    var slots: [SlotProtocol] { get set }
    var moneyValue: Int { get set }
    
    func startGame(_ values: [SlotColour], player: Player) throws
    func finishGame()
    
    func playerWins()
    func playerLoses()
    
}
