//
//  CarModelCard.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI

struct CarModelCard: View {
    
    var deviceWidth = CGFloat(UIScreen.main.bounds.width)
    var carModel : CarModel
    
    @State var isFavorite = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.black.opacity(0.25)
            VStack {
                Image(carModel.image)
                    .resizable()
                    .scaledToFit()
                
                HStack {
                    Text(carModel.name)
                        .font(.system(size: 15))
                        .bold()
                    
                    Button(action: {
                        isFavorite.toggle()
                    }){
                        isFavorite ?
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.black):
                        Image(systemName: "heart")
                            .foregroundColor(Color.black)
                    }
                }
            }
        }.frame(width: (deviceWidth-50) / 2, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct CarModelCard_Previews: PreviewProvider {
    
    static var carModel = CarModel(name: "Tiguan", image: "vw-logo",
    description: "DESCRIPTION")
    
    static var previews: some View {
        CarModelCard(carModel: carModel)
    }
}
