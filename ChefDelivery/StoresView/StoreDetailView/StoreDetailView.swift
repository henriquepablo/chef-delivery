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
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                
                StoreDetailHeaderView(store: store)
                
                StoreDetailProductsView(products: store.products)
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
