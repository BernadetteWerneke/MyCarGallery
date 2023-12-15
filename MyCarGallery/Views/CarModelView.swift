//
//  CarModelView.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI

struct CarModelView: View {
    
    @State var carModels: [CarModel]
    
    @State var carModelName: String = ""
    @State var carModelImage: String = ""
    @State var carModelDesc: String = ""
    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()),
                                    GridItem(.flexible())],
                          spacing: 16) {
                    ForEach(carModels, id: \.self) {
                        carModel in
                        NavigationLink(destination:
                                        DetailView(carModel: carModel),
                                       label: {
                            CarModelCard(carModel: carModel)
                                .padding(5)
                        })
                    }
                    AddView(carModelName: $carModelName, carModelImage: $carModelImage, carModelDesc: $carModelDesc) {
                        car in
                        let carModel = car
                        if !self.carModels.contains(carModel)
                            && car.name != "" && car.image != "" {
                            self.carModels.append(carModel)
                            carModelName = ""
                            carModelImage = ""
                            carModelDesc = ""
                        }
                    }
                }
            }
        }
    }
}

struct CarModelView_Previews: PreviewProvider {
    
    static var carModels = [
    CarModel(name: "Tiguan", image: "tiguan-image", description: "DESCRIPTION"), CarModel(name: "Golf", image: "golf-image", description: "DESCRIPTION")]
    
    
    static var previews: some View {
        CarModelView(carModels: carModels)
    }
}
