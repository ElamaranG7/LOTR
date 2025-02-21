//
//  SelectCurrency.swift
//  LOTRConvertor
//
//  Created by SAIL on 14/12/24.
//

import SwiftUI

struct SelectCurrency: View {
    

    @Binding var topCurrency : Currency
    @Binding var bottomCurrency : Currency
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.parchment).resizable().ignoresSafeArea()
                .background(.brown.opacity(0.5))
            VStack{
                Text("Select the currency you are starting with:")
                    .fontWeight(.bold)
                IconGrid(currency: $topCurrency)
                
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                IconGrid(currency: $bottomCurrency)
                
                Button("Done"){
                    dismiss()
                }.buttonStyle(.borderedProminent)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .tint(.brown.mix(with: .black, by: 0.2))
                    .padding()
                    
            }
            .multilineTextAlignment(.center)
            .padding()
        }
    }
}

#Preview {
    @Previewable @State var topCurrency: Currency = .silverPiece
    @Previewable @State var bottomCurrency: Currency = .goldPiece
    SelectCurrency(topCurrency: $topCurrency, bottomCurrency: $bottomCurrency)
}


