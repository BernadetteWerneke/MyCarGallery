//
//  ManufacturerView.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI

struct ManufacturerView: View {
    
    @StateObject var viewModel: CarViewModel = CarViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.opacity(0.7)
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        ForEach(viewModel.manufactures) {
                            manu in
                            
                            NavigationLink(destination: CarModelView(carModels: manu.carModels), label: {
                                ManufacturerCard(manufacturer: manu)
                            })
                        }
                    }
                }
            }
        }
    }
}

struct ManufacturerView_Previews: PreviewProvider {
    static var previews: some View {
        ManufacturerView()
    }
}
