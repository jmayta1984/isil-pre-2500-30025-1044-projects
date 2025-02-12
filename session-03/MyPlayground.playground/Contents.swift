import UIKit

class Product {
    let name: String
    let price: Double
    let quantity: Int
    
    init(name: String, price: Double, quantity: Int) {
        self.name = name
        self.price = price
        self.quantity = quantity
    }

}

class Car: Product {
    
}

let product = Product(name: "Laptop", price: 10.50, quantity: 2)

struct InventoryManager {
        
    let products: [Product]
    
    func addProduct(product: Product) {
        
    }
    
    func availableProducts() -> [Product]{
    
        return []
    }
}

var inventory = InventoryManager(products: [])

/*
 Clases -> atributos y métodos -> Struct / Class
 Interfaz -> declara métodos -> Protocol
 */


