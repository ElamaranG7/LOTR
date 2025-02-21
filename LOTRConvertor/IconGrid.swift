//
//  IconGrid.swift
//  LOTRConvertor
//
//  Created by SAIL on 14/12/24.
//

import SwiftUI

struct IconGrid: View {
    
    @Binding var currency : Currency
    @Environment(\.dismiss) var dismiss
    var body: some View {
        LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]){
            ForEach(Currency.allCases){ currency in
                
                if self.currency == currency{
                    CurrencyIcon(currencyImage: currency.images, textContent: currency.name)
                        .shadow(color: .black, radius: 10)
                        .overlay {
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(lineWidth: 3)
                                .opacity(0.5)
                        }
                }else {
                    CurrencyIcon(currencyImage: currency.images, textContent: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    @Previewable @State var currency : Currency = .silverPenny
    IconGrid(currency: $currency)
}


