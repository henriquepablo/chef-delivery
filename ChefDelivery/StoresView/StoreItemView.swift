//
//  StoreItemView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 26/01/25.
//

import SwiftUI

struct StoreItemView: View {
    
    let store: StoreType
    
    var body: some View {
        HStack {
            ContainerRelativeShape()
                .frame(width: 50, height: 50)
                .cornerRadius(25)
                .foregroundColor(.gray)
                .fixedSize(horizontal: false, vertical: true)
            
            VStack {
                Text(store.name)
                    .font(.subheadline)
            }
            Spacer()
        }
    }
}

#Preview {
    StoreItemView(store: storesMock[0])
}
