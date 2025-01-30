//
//  ProductDetailView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 28/01/25.
//

import SwiftUI

struct ProductDetailView: View {
    let prodcut: ProductType
    
    @State private var productQunatity: Int = 1
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 16) {
                ContainerRelativeShape()
                    .shadow(radius: 20)
                    .frame(width: .infinity, height: 230)
                    .foregroundColor(.gray)
                
                Text(prodcut.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                    .padding(.top)
                
                Text(prodcut.description)
                    .padding(.horizontal)
                
                Text(prodcut.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            
            Spacer()
            
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
            }
            
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
