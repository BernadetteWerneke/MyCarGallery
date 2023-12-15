//
//  DetailView.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI



struct DetailView: View {
    
    var carModel: CarModel
    
    var body: some View {
        ZStack {
            Color.black.opacity(0.7)
            VStack {
                Text(carModel.name.uppercased())
                    .foregroundColor(Color.white.opacity(0.5))
                    .font(.custom("Verdana", size: 24))
                Image(carModel.image)
                    .resizable()
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 10))
             
                    Text(carModel.description)
                        .foregroundColor(Color.white.opacity(0.75))
                        .multilineTextAlignment(.trailing)
                        .frame(width: 380)
                        .padding(.horizontal, 10)
                
            }
        }.ignoresSafeArea()
    }
}

struct DetailView_Previews: PreviewProvider {
    
    
    
    static var previews: some View {
        DetailView(carModel: CarModel(name: "Tiguan", image: "tiguan-image", description: "DESCRIPTION"))
    }
}
