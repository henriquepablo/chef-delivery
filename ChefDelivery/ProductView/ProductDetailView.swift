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
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                ProductDetailHeaderView(product: prodcut)
            }
            
            Spacer()
            
            ProductDetailQuantityView()
            
            Spacer()
            
            Button  {
                print("botão pressionado")
            } label: {
                HStack {
                    Image(systemName: "cart")
                        
                    Text("Adicionar ao Carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical, 16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundStyle(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRed").opacity(0.5), radius: 10, x: 6, y: 8)
            }
        }
    }
}

#Preview {
    ProductDetailView(prodcut: storesMock[0].products[0])
}
