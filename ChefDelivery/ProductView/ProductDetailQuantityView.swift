//
//  SwiftUIView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 01/02/25.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
    @State private var productQunatity: Int = 1
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack {
                Button {
                    if (productQunatity > 1) {
                        productQunatity -= 1
                    }

                } label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                Text("\(productQunatity)")
                    .font(.title2)
                    .bold()
                
                Button {
                    productQunatity += 1
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
        }    }
}

#Preview {
    ProductDetailQuantityView()
}
