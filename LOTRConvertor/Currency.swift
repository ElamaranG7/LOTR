//
//  Currency.swift
//  LOTRConvertor
//
//  Created by SAIL on 16/12/24.
//

import SwiftUI

enum Currency : Double, CaseIterable, Identifiable{
    
    case silverPenny = 6400
    case silverPiece = 64
    case copperPenny = 16
    case goldPenney = 4
    case goldPiece = 1
    
    var id : Currency { self }

    var images : ImageResource{
        switch self {
        case .silverPenny :
            return .silverpenny
        case .silverPiece:
            return .silverpiece
        case .copperPenny:
            return .copperpenny
        case .goldPenney:
            return .goldpenny
        case .goldPiece:
            return .goldpiece
        }
    }
    
    var name : String{
        switch self {
        case .silverPenny :
            return "Silver Penny"
        case .silverPiece:
            return "Silver Piece"
        case .copperPenny:
            return "Copper Penny"
        case .goldPenney:
            return "Gold Penny"
        case .goldPiece:
            return "Gold Piece"
        }
    }
    
    func convert(amountString: String, currency : Currency) -> String{
        guard let doubleAmount = Double(amountString) else { return "" }
        let convertedAmount = (doubleAmount / self.rawValue) * currency.rawValue
        return String(format: "%.2f", convertedAmount)
    }
    
}
