//
//  StoresContainerView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 26/01/25.
//

import SwiftUI

struct StoresContainerView: View {
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.headline)
            
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { store in
                    StoreItemView(order: store)
                }
            }
        }
        .padding(20)
    }
}

#Preview {
    StoresContainerView()
}
