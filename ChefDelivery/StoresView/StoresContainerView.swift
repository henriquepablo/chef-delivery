//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 26/01/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    
    @State private var ratingFilter = 0
    
    var filteredStore: [StoreType] {
        return storesMock.filter { store in
            store.stars >= ratingFilter
        }
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.headline)
                
                Spacer()
                
                Menu("Filtrar") {
                    
                    Button {
                        ratingFilter = 0
                    }label: {
                        Text("Limpar filtro")
                    }
                    
                    Divider()
                    
                    ForEach(1...5, id: \.self ) { rating in
                        Button {
                            ratingFilter = rating
                        } label: {
                            if (rating > 1) {
                                Text("\(rating) estrelas ou mais")
                            }
                            else {
                                Text("\(rating) estrela ou mais")
                            }
                        }
                    }
                }
                .foregroundColor(.black)
            }
            
            VStack(alignment: .leading, spacing: 30) {
                
                if (filteredStore.isEmpty) {
                    Text("Nenhum resultado encontrado.")
                        .font(.title2)
                        .bold()
                        .foregroundColor(Color("ColorRed"))
                        .padding(.vertical, 32)
                        .frame(maxWidth: .infinity)
                }
                else {
                    ForEach(filteredStore) { store in
                        NavigationLink {
                            StoreDetailView(store: store)
                        } label: {
                            StoreItemView(store: store)
                        }
                    }
                }
            }
        }
        .padding(20)
        .foregroundColor(.black)
    }
}

#Preview {
    StoresContainerView()
}
