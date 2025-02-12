//
//  ProductListView.swift
//  Inventory
//
//  Created by user272495 on 1/29/25.
//

import SwiftUI

struct ProductListView: View {
    
    @State var products: Products = [Product(id: UUID(), name: "Laptop", quantity: 3)]
    var body: some View {
        NavigationStack {
            List {
                ForEach(products) { product in
                    Text(product.name)
                }
                .onDelete { indexSet in
                    products.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("Inventory")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: {
                        ProductView { product in
                            self.products.append(product)
                        }
                    }) {
                        Image(systemName: "plus")

                    }
                    
                    
                }
            }
        }
       
    }
}

#Preview {
    ProductListView()
}
