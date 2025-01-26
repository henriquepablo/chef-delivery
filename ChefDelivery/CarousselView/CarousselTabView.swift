//
//  CarousselTabView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 25/01/25.
//

import SwiftUI

struct CarousselTabView: View {
    
    let ordersMock: [OrderType] = [
        OrderType(id: 1, name: "Restaurantes", image: "Banner-Hamburguer"),
        OrderType(id: 2, name: "Farmácias", image: "Brazilian-meal-banner"),
        OrderType(id: 3, name: "Descontos", image: "Pokes-banner"),
    ]
    
    var body: some View {
        TabView {
            ForEach(ordersMock) { order in
                CarrouselItemView(order: order)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .always))
    }
}

#Preview {
    CarousselTabView()
}
