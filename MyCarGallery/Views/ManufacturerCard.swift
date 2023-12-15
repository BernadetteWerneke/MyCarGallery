//
//  ManufacturerCard.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import SwiftUI

struct ManufacturerCard: View {
    
    var manufacturer: Manufacturer
    
    var body: some View {
        Image(manufacturer.logo)
            .resizable()
            .scaledToFit()
            .frame(width: 380)
            .cornerRadius(30)
    }
}

struct ManufacturerCard_Previews: PreviewProvider {
    static var previews: some View {
        ManufacturerCard(manufacturer: Manufacturer(name: "vw", logo: "vw-logo", carModels: []))
    }
}
