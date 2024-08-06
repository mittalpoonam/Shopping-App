//
//  CategoryView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct CategoryView: View {
    var isSelected: Bool = false
    var title: String = "All"
    
    var body: some View {
        VStack(spacing: 1) {
            Text(title)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.red : Color.gray.opacity(0.5))
            
            
            if isSelected {
                Rectangle()
                    .foregroundColor(Color.red)
                    .frame(width: 5, height: 5)
                    .rotationEffect(Angle(degrees: 45))
            }
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView()
    }
}


