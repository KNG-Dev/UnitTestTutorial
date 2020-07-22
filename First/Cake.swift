//
//  Cake.swift
//  First
//
//  Created by Kenny Ho on 7/22/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import Foundation

struct Cake {
    
    func bake(ingredients: [String]) -> Int {
        for ingredient in ingredients {
            print("Adding \(ingredient).")
        }
        
        let cost = 1 + (ingredients.count * 3)
        print("The cake is ready; please pay \(cost).")
        return cost
    }
}

