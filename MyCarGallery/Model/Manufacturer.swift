//
//  Manufacturer.swift
//  MyCarGallery
//
//  Created by Bernadette Werneke on 13.12.23.
//

import Foundation

struct Manufacturer : Identifiable {
    var id = UUID()
    var name : String
    var logo : String
    var carModels : [CarModel]
}
