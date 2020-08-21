//
//  ContentView.swift
//  RealDecoyChallengeApp
//
//  Created by Nirav Bavishi on 2020-08-20.
//  Copyright © 2020 Nirav Bavishi. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var categories:[String:[Drink]]{
        .init(grouping: drinkData, by: {$0.category.rawValue}
        )
    }
    
    var body: some View {
    
        NavigationView{
            
            List(categories.keys.sorted(), id:\String.self){ key in
                
                DrinkRow(categoryName: "\(key) Drinks".uppercased(), drinks: self.categories[key]!)
                    
                    .frame(height: 320)
                    .padding(.top)
                    .padding(.bottom)
                
                
            }
        .navigationBarTitle("Coffee")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
