//
//  StoreDetailHeaderView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 01/02/25.
//

import SwiftUI

struct StoreDetailHeaderView: View {
    
    let store: StoreType
    
    var body: some View {
        VStack {
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
        }
    }
}

#Preview {
    StoreDetailHeaderView(store: storesMock[0])
}
