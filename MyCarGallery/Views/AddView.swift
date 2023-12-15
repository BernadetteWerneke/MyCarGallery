//
//  AddView.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI

struct AddView: View {
    
    var deviceWidth = UIScreen.main.bounds.width
    
    @Binding var carModelName: String
    @Binding var carModelImage: String
    @Binding var carModelDesc: String
    
    var addAction: (CarModel) -> Void
    
    
    var body: some View {
        
        ZStack(alignment: .top) {
            Color.black.opacity(0.25)
            VStack {
                Button(action: {
                    addAction(CarModel(name: carModelName, image: carModelImage, description: carModelDesc))
                }){
                    Image(systemName: "plus")
                }
                TextField("Model", text: $carModelName)
                TextField("Image", text: $carModelImage)
                TextField("Description", text: $carModelDesc)
            }.padding(.leading, 3)
        }.frame(width: (deviceWidth-50) / 2, height: 150)
            .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}
