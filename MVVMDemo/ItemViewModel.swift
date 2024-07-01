//
//  ItemViewModel.swift
//  MVVMDemo
//
//  Created by Sachin Gurung on 7/1/24.
//

import Foundation

class ItemViewModel: ObservableObject {
    @Published var items: [Item] = []
    
    init(){
        fetchItems()
    }
    
    func fetchItems() {
        items = [
            Item(id: UUID(), name: "Item 1"),
            Item(id: UUID(), name: "Item 2"),
            Item(id: UUID(), name: "Item 5")
        ]
    }
}
