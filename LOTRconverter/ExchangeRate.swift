//
//  ExchangeRate.swift
//  LOTRconverter
//
//  Created by Wobi on 14/04/2024.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let info: String
    let rightImage: ImageResource
    var body: some View {
        HStack{
            //left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            //exchange rate text
            Text(info)
            //right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview{
    ExchangeRate(leftImage: .silverpiece, info: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
