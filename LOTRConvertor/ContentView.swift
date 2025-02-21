//
//  ContentView.swift
//  LOTRConvertor
//
//  Created by SAIL on 29/11/24.
//

import SwiftUI
import TipKit

struct ContentView: View {
    @State var rightAmountTF = ""
    @State var leftAmountTF = ""
    @State var leftCurrency = Currency.silverPiece
    @State var rightCurrency = Currency.goldPiece
    @FocusState var rightTyping
    @FocusState var leftTyping
    
    @State var changeCurrencyInfo = false
    @State var showExchangeInfo = false
    let currencyTip = CurrencyTip()
    
    var body: some View {
        ZStack {
            //background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            VStack{
                // ponny image
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                // text
                Text("Currency Exchange")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                
                // total stack
                HStack{
                    VStack{
                        HStack{
                            //  silver image
                            Image(leftCurrency.images)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                            // text
                            Text(leftCurrency.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                            
                        }.padding(.bottom,5)
                            .popoverTip(currencyTip, arrowEdge: .bottom)
                        
                        // textField
                        TextField("Amount", text: $leftAmountTF)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.leading)
                            .clipShape(.buttonBorder)
                            .focused($leftTyping)
                            
                    }
                    Image(systemName: "equal")
                        .foregroundStyle(.white)
                        .font(.largeTitle)
                        .symbolEffect(.pulse)
                    
                    VStack{
                        HStack{
                            // text
                            Text(rightCurrency.name)
                                .foregroundStyle(.white)
                                .font(.headline)
                            //  silver image
                            Image(rightCurrency.images)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 33)
                        }
                        // textField
                        TextField("Amount", text: $rightAmountTF)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                            .clipShape(.buttonBorder)
                            .focused($rightTyping)
                    }
                }
                .padding()
                .background(Color.black.opacity(0.5))
                .clipShape(.capsule)
                .keyboardType(.decimalPad)
                .onTapGesture {
                    changeCurrencyInfo.toggle()
                    currencyTip.invalidate(reason: .actionPerformed)
                }
                
                Spacer()
                // info Button
                
                HStack {
                    Spacer()
                    Button(action: {
                        showExchangeInfo.toggle()
                    }, label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    })
                    .padding(.trailing)
                }
            }
        }
        .task {
            try? Tips.configure()
        }
        
        .onChange(of: rightAmountTF) {
            if rightTyping{
                leftAmountTF = rightCurrency.convert(amountString: rightAmountTF, currency: leftCurrency)
            }
        }.onChange(of: leftAmountTF) {
            if leftTyping{
                rightAmountTF = leftCurrency.convert(amountString: leftAmountTF, currency: rightCurrency)
            }
        }.onChange(of: rightCurrency){
            rightAmountTF = leftCurrency.convert(amountString: leftAmountTF, currency: rightCurrency)
        }.onChange(of: leftCurrency){
            leftAmountTF = rightCurrency.convert(amountString: rightAmountTF, currency: leftCurrency)
        }.sheet(isPresented: $showExchangeInfo){
            ExchangeInfo()
        }.sheet(isPresented: $changeCurrencyInfo) {
            SelectCurrency(topCurrency: $leftCurrency, bottomCurrency: $rightCurrency)
        }
        
    }
}

#Preview {
    ContentView()
}
