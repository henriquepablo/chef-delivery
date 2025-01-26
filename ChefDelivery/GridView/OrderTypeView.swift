//
//  OrderTypeView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 25/01/25.
//

import SwiftUI

struct OrderTypeView: View {
    
    let orderType: OrderType
    
    var body: some View {
        VStack(spacing: 5) {
            
            ContainerRelativeShape()
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .foregroundColor(.gray)
                .fixedSize(horizontal: false, vertical: true)
            
            Text(orderType.name)
                .font(.system(size: 14))
        }
    }
}

#Preview {
    OrderTypeView(orderType: OrderType(id: 1, name: "Restaurantes", image: "Restaurante Image"))
}
