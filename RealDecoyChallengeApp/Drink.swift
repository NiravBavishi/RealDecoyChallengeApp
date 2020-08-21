//
//  Drink.swift
//  RealDecoyChallengeApp
//
//  Created by Nirav Bavishi on 2020-08-20.
//  Copyright © 2020 Nirav Bavishi. All rights reserved.
//

import SwiftUI

struct Drink: Hashable, Codable, Identifiable{
    
    var id:Int
    var name:String
    var imageName: String
    var category:Category
    var description:String
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case hot = "hot"
        case cold = "cold"
    }
    
}
