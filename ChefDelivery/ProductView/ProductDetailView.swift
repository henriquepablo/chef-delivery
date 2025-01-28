//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 28/01/25.
//

import SwiftUI

struct ProductDetailView: View {
    let prodcut: ProductType
    
    var body: some View {
        Text(prodcut.name)
    }
}

#Preview {
    ProductDetailView(prodcut: storesMock[0].products[0])
}
