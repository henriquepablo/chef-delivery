//
//  ProductDetailHeaderView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 01/02/25.
//

import SwiftUI

struct ProductDetailHeaderView: View {
    
    let product: ProductType
    
    var body: some View {
        ContainerRelativeShape()
            .shadow(radius: 20)
            .frame(width: .infinity, height: 230)
            .foregroundColor(.gray)
        
        Text(product.name)
            .font(.title)
            .bold()
            .padding(.horizontal)
            .padding(.top)
        
        Text(product.description)
            .padding(.horizontal)
        
        Text(product.formattedPrice)
            .font(.title3)
            .bold()
            .padding(.horizontal)
    }
}

#Preview {
    ProductDetailHeaderView(product: storesMock[0].products[0])
}
