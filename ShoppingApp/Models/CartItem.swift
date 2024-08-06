//
//  CartItem.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import Foundation


class CartItem {
    var product: Product
    var count: Int = 0
    
    init(product: Product, count: Int) {
        self.product = product
        self.count = count
    }
}
