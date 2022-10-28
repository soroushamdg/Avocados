//
//  RipeningModel.swift
//  Avocados
//
//  Created by Soro on 2022-10-28.
//

import Foundation

struct Ripening: Identifiable {
    var id = UUID()
    
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}
