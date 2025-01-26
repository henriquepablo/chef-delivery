//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 26/01/25.
//

import SwiftUI

struct StoreItemView: View {
    
    let order: OrderType
    
    var body: some View {
        HStack {
            ContainerRelativeShape()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
                .foregroundColor(.gray)
                .fixedSize(horizontal: false, vertical: true)
            
            VStack {
                Text(order.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(order: OrderType(id: 1, name: "Monstro Burguer", image: "Restaurante Image"))
}
