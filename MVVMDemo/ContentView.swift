//
//  ContentView.swift
//  MVVMDemo
//
//  Created by Sachin Gurung on 7/1/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ItemViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.items, id : \.id) { item in
                Text(item.name)
            }
            .navigationBarTitle("Items")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
