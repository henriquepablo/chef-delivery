//
//  CarrouselItemView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 25/01/25.
//

import SwiftUI

struct CarrouselItemView: View {
    
    let order: OrderType
    
    var body: some View {
        ZStack {
            
            ContainerRelativeShape()
                .frame(width: 320, height: 180)
                .cornerRadius(10)
                .foregroundColor(.gray)
                .fixedSize(horizontal: false, vertical: true)
            
            Text(order.image)
                .font(.system(size: 14))
        }
    }
}

#Preview {
    CarrouselItemView(order: OrderType(id: 1, name: "Restaurantes", image: "Restaurante Image"))
}
