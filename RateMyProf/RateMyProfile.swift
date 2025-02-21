//
//  RateMyProfile.swift
//  LOTRConvertor
//
//  Created by SAIL on 16/12/24.
//

import SwiftUI

struct RateMyProfile: View {
    
    let imageView : ImageResource
    let text : String
    
    var body: some View {
        VStack{
            Rectangle()
                .foregroundStyle(.white)
                .frame(width: 120 ,height: 120)
                .overlay {
                    VStack{
                        //
                        Image(imageView)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 120,height: 80)
                            .padding(.top,5)
                        Spacer()
                        
                        Text(text)
                        
                            .frame(maxWidth: .infinity,maxHeight: 25)
                            .border(.purple.opacity(0.8))
                            .font(.title)
                            .foregroundStyle(.black)
                            .textFieldStyle(.roundedBorder)
                            .background(.white)
                            .padding(.bottom,0)
                        
                        
                        
                    }
                }
                .border(.purple,width: 0.8)
            Button(action: {
                
            }, label: {
                Text("RATE")
                    .frame(width: 50,height:20)
            }).buttonStyle(.borderedProminent)
                .tint(.purple)
                .clipShape(.capsule)
                .padding(.top,-9)
        }
    }
}

#Preview {
    RateMyProfile(imageView: .prancingpony, text: "Dr.Jonos")
}
