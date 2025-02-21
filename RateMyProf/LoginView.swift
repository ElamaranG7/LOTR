//
//  LoginPageView.swift
//  LOTRConvertor
//
//  Created by SAIL on 12/12/24.
//

import SwiftUI

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        
        VStack{
            Rectangle().foregroundStyle(.black).frame(width: .infinity, height: 75).overlay {
                Text("Rate my Prof").foregroundStyle(.white)
                    .fontWeight(.medium).font(.largeTitle).scaledToFit().tracking(2).multilineTextAlignment(.center)
                    .padding()
            }
            Text("Login to Lead").foregroundStyle(.purple).fontWeight(.regular).multilineTextAlignment(.center).scaledToFit().frame(width: .infinity, height: 50).padding()
            
            Rectangle().foregroundStyle(.white).frame(width: 250, height: 250).overlay {
                VStack{
                    Text("Admin ID").fontWeight(.regular).font(.title2).scaledToFit()
                    TextField("Enter the userName", text: $username)
                        .padding(.leading, 10)
                        .foregroundStyle(.white)
                        .background(.gray.opacity(0.2))
                        .clipShape(.buttonBorder)
                        .frame(height: 40)
                        .padding(.horizontal,10)
                    Text("Password").fontWeight(.regular).font(.title2).scaledToFit()
                    TextField("Enter the userName", text: $username)
                        .padding(.leading, 10)
                        .foregroundStyle(.white)
                        .background(.gray.opacity(0.2))
                        .clipShape(.buttonBorder)
                        .frame(height: 40)
                        .padding(.horizontal,10)
                    
                    Button("Login") {
                        
                    }.buttonStyle(.borderedProminent)
                        
                }
                
                
            }.border(Color.purple, width: 1).padding()
            
            Button(action: {}) {
                
            }
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
