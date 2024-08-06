//
//  GenderView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct GenderView: View {
    
    var isSelected: Bool = true
    var title: String = "WOMEN"
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title3)
                .multilineTextAlignment(.center)
                .foregroundColor(isSelected ? Color.orange : Color.gray.opacity(0.5))
            
            if isSelected {
                ZStack {
                    Rectangle()
                        .foregroundColor(Color.orange)
                        .frame(height: 1)
                    
                Rectangle()
                        .foregroundColor(Color.orange)
                        .frame(width: 5, height: 5)
                        .rotationEffect(Angle(degrees: 45))
                }
            }else{
                Divider()
            }
        }
    }
}

struct GenderView_Previews: PreviewProvider {
    static var previews: some View {
        GenderView()
    }
}
