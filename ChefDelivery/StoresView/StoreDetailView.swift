//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 26/01/25.
//

import SwiftUI

struct StoreDetailView: View {
    var store: StoreType
    @Environment(\.presentationMode) var presentationMode
    
    @State private var selectedProduct: ProductType?
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                ContainerRelativeShape()
                    .foregroundStyle(.gray)
                    .frame(width: .infinity, height: 200)
                
                HStack(spacing: 8) {
                    Text(store.name)
                        .font(.title)
                        .bold()
                    
                    Spacer()
                    
                    ContainerRelativeShape()
                        .foregroundStyle(.gray)
                        .frame(width: 60, height: 60)
                        .cornerRadius(10)
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                HStack {
                    Text(store.location)
                    
                    Spacer()
                    
                    ForEach(1...store.stars, id: \.self) { _ in
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.caption)
                            
                    }
                }
                .padding(.vertical, 8)
                .padding(.horizontal)
                
                Text("Produtos")
                    .font(.title2)
                    .bold()
                    .padding()
                
                ForEach(store.products) { product in
                    
                    Button {
                        selectedProduct = product
                    } label: {
                        HStack {
                            VStack (alignment: .leading, spacing: 8) {
                                Text(product.name)
                                    .bold()
                                
                                Text(product.description)
                                    .foregroundColor(.black.opacity(0.5))
                                    .multilineTextAlignment(.leading)
                                
                                Text(product.formattedPrice)
                            }
                            
                            Spacer()
                            
                            ContainerRelativeShape()
                                .foregroundColor(.gray)
                                .frame(width: 120, height: 120)
                                .cornerRadius(12)
                                .shadow(color: .black.opacity(0.3), radius: 20, x: 6, y: 8)
                        }
                        .padding()
                        .foregroundColor(.black)
                    }
                    .sheet(item: $selectedProduct) { product in
                        ProductDetailView(prodcut: product)
                    }
                }
            }
            .navigationTitle(store.name)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden()
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    } label: {
                        HStack {
                            Image(systemName: "cart")
                            Text("Lojas")
                        }
                        .foregroundStyle(Color("ColorRed"))
                    }
                }
            }
        }
    }
}

#Preview {
    StoreDetailView(store: storesMock[0])
}
