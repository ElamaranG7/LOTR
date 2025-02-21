//
//  CurrencyTip.swift
//  LOTRConvertor
//
//  Created by SAIL on 20/01/25.
//


import TipKit

struct CurrencyTip: Tip {
    
    var title = Text("Change Currency")
    
    var message: Text? = Text("You can tap the left or right currency to bring up the selected currency screen.")
    
    var image: Image? = Image(systemName: "hand.tap.fill")
}
