//
//  ProductItemView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct ProductItemView: View {
    var product: Product
    
    var body: some View {
        
        NavigationLink {
            ProductDetailsView(product: product)
        } label: {
            VStack {
                Image(product.images[0])
                    .resizable()
                    .scaledToFill()
                    .frame(width: 165, height: 200)
                    .cornerRadius(5)
                    .shadow(radius: 1)
                
                Text(product.title)
                    //.font(.title3)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .foregroundColor(Color.black)
                    .frame(width: 165, alignment: .leading)
                
                Text("$\(product.price)")
                    .font(.title3)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.red)
                    .frame(width: 165, alignment: .leading)
                    .padding(.top, 2)
            }
            .frame(width: 165, height:330)
        }

    }
}

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: product1)
    }
}
