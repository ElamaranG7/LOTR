//
//  RateMyProfile.swift
//  LOTRConvertor
//
//  Created by SAIL on 12/12/24.
//

import SwiftUI

struct LoginTypeView: View {
    var body: some View {
        
        VStack{
            Rectangle()
                .fill(Color.black) // Set the background color
                .frame(maxWidth: .infinity, maxHeight: 80)
                .overlay {
                    HStack{

                        Text("RateMyProf.")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.center)
                            .padding()
                       
                    }
                   
                    
                }
                .padding(.bottom, 20)
           
//            VStack(spacing: 20){
//                LoginTypeExtentView(imageView: .copperpenny, text: "Student")
//                LoginTypeExtentView(imageView: .goldpenny, text: "Admin")
//                LoginTypeExtentView(imageView: .silverpenny, text: "Professor")
//            }
            LazyVGrid(columns: [GridItem(),GridItem()]){
                
                ForEach(0..<6){ _ in
                    RateMyProfile(imageView: .silverpenny, text:"Dr. John")
                }
            }
            
            
            
            .padding()
            
            
        }
        Spacer()
        
    }
}

#Preview {
    LoginTypeView()
}

struct LoginTypeExtentView: View {
    let imageView : ImageResource
    let text : String
    var body: some View {
        Rectangle()
            .foregroundStyle(.white)
            .frame(width: 200 ,height: 175)
            .overlay {
                VStack{
                    //
                    Image(imageView)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 125,height: 125)
                        .padding(.top,5)
                    Spacer()
                    
                    Text(text)
                        .frame(maxWidth: .infinity,maxHeight: 50)
                        .font(.title)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                        .textFieldStyle(.roundedBorder)
                        .background(.purple)
                        .padding(.bottom,0)
                    
                }
            }
            .border(.purple,width: 0.5)
    }
}
