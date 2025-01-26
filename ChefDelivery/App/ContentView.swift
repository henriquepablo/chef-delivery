//
//  ContentView.swift
//  ChefDelivery
//
//  Created by pablo henrique on 25/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
                .padding(.horizontal, 15)
         
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    OrderTypeGridView()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
