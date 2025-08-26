//
//  Slot.swift
//  Fruit Machine
//
//  Created by Karl Cridland on 26/08/2025.
//

protocol SlotProtocol {
    var colour: SlotColour? { get }
    func selectColour(_ colour: SlotColour?)
}

class Slot: SlotProtocol {
    
    var colour: SlotColour?
    
    func selectColour(_ colour: SlotColour? = nil) {
        self.colour = colour ?? .allCases.randomElement()
    }
    
}

enum SlotColour: CaseIterable {
    case black
    case white
    case green
    case blue
}
