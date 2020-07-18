//
//  Convert.swift
//  First
//
//  Created by Kenny Ho on 7/18/20.
//  Copyright © 2020 Kenny Ho. All rights reserved.
//

import Foundation

struct Converter {
    func convertToCelsius(fahrenheit: Double) -> Duuble {
        return (fahrenheit - 32) * 5 / 9
    }
}
