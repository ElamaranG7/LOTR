//
//  SwiftUIView.swift
//  LOTRConvertor
//
//  Created by SAIL on 04/12/24.
//

import SwiftUI

struct SwiftUIView: View {
    @State var phoneNumberTF = ""
    @State var passwordTF = ""
    
    var body: some View {
        
        ZStack{
            
            VStack{
                // logo image
                Image(.goldpenny)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)
                
                // welcome text
                
                Text("Welcome!\n to ")
                    .font(.headline)
                    .fontWeight(.semibold) +
                Text("CRM.io")
                    .font(.subheadline)
                    .foregroundColor(.blue)
                // phone view
                
                HStack {
                    // phone data
                    VStack(alignment: .leading) {
                        // text phone number
                        Text("Phone Number")
                            .font(.headline)
                            .bold()
                            .foregroundStyle(.gray)
                        
                        // textfield number
                        TextField("Enter phone number", text: $phoneNumberTF)
                    }
                    
                    // phone image
                    Image(systemName: "phone.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundStyle(.indigo)
                }
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.gray.opacity(0.2)) // Background color with opacity
                )
                .padding()
                
                // password view
                
                HStack{
                    // password  data
                    VStack(alignment: .leading){
                        // text password
                        Text("password")
                            .font(.headline)
                            .foregroundStyle(.gray)
                        
                        // textfield number
                        TextField("Enter password", text: $passwordTF)
                    }
                    // Password image
                    Image(systemName: "eye.slash.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 25)
                        .foregroundStyle(.indigo)
                        .onTapGesture {
                    
                        }
                }.padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.gray.opacity(0.2))
                    ).padding()
                // login Button
                
                Button(action: {}){
                    Text("Login")
                        .padding()
                        .frame(width: 300)
                        .foregroundStyle(.white)
                        .background(Color.indigo)
                        .cornerRadius(100)
                    
                }
                
                // forget button
                
                Button(action:{}){
                    Text("I forget my password")
                        .padding(10)
                        .foregroundStyle(.indigo)
                        .font(.title2)
                        .fontWeight(.semibold)
                        .frame(width: 300)
                         
                }
                Spacer()
                //wanna try our text
                Text("Wanna try our services?")
                    .foregroundStyle(.gray)
                // here you are
                Button(action: {}){
                    Text("Here you are")
                        .underline()
                        .foregroundStyle(.indigo)
                }
                
            }.padding(.top, 20)
        }.border(.blue)
    }
}

#Preview {
    SwiftUIView()
}
