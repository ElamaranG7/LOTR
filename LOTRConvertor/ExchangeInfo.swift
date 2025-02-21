//
//  ExchangeInfo.swift
//  LOTRConvertor
//
//  Created by SAIL on 11/12/24.
//

import SwiftUI

struct ExchangeInfo: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack{
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(Color.brown)
            VStack{
                // text
                Text("Exchange Rates")
                    .fontWeight(.medium)
                    .font(.title)
                    .tracking(3)
                    .padding()
                // text
                Text("Here at the Prancing Pony, we are happy to offer you a place where you can exchange all the known currencies in the entire world except one. We used to take Brandy Bucks, but after finding out that it was a person instead of a piece of paper, we realized it had no value to us. Below is a simple guide to our currency exchange rates:")
                    .font(.title3)
                    .padding()
                VStack{
                    ExtractedView(leftImage: .goldpiece, textContent: "1 Gold Piece = 4 Gold pennies", rightImage: .goldpenny)
                    ExtractedView(leftImage: .goldpenny, textContent: "1 Gold Penny = 4 Silver Pieces", rightImage: .silverpiece)
                    ExtractedView(leftImage: .silverpiece, textContent: "1 Silver Piece = 4 Silver pennies", rightImage: .silverpenny)
                    ExtractedView(leftImage: .silverpenny, textContent: "1 Silver penny = 100 copper pennies", rightImage: .copperpenny)
                }.padding()
                // done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown.mix(with: .black, by: 0.2))
                .foregroundColor(.white)
                .frame(width: 150, height: 50)
                .padding()
            }
        }
        .foregroundStyle(.black)
    }
}

#Preview {
    ExchangeInfo()
}


