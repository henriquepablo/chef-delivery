//
//  Double+.swift
//  ChefDelivery
//
//  Created by pablo henrique on 27/01/25.
//

import Foundation

extension Double {
    func formatPrice() -> String {
        let formattedString = String(format: "%.2f", self)
        return formattedString.replacingOccurrences(of: ".", with: ",")
        
    }
}
