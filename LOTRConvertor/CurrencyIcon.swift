//
//  CurrencyIcon.swift
//  LOTRConvertor
//
//  Created by SAIL on 12/12/24.
//

import SwiftUI

struct CurrencyIcon: View {
    
    let currencyImage : ImageResource
    let textContent : String
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(currencyImage).resizable().scaledToFit()
            Text(textContent).font(.caption).padding(3).frame(maxWidth: .infinity).background(Color.brown.opacity(0.75))
        }
        .frame(width: 100, height: 100)
        .background(Color.brown.opacity(0.5))
        .clipShape(.rect(cornerRadius: 25))
    }
}

#Preview {
   
    CurrencyIcon(currencyImage: .silverpenny, textContent: "Demo")
}
