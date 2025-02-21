//
//  ExtractedView.swift
//  LOTRConvertor
//
//  Created by SAIL on 12/12/24.
//

import SwiftUI

struct ExtractedView: View {
    
    let leftImage : ImageResource
    let textContent : String
    let rightImage : ImageResource
    
    var body: some View {
        HStack{
            // image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //text
            Text(textContent)
            // image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}
#Preview {
    ExtractedView(leftImage: .goldpenny, textContent: "Demo data will change", rightImage: .copperpenny)
}
