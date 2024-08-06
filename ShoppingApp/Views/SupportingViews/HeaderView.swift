//
//  HeaderView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct HeaderView: View {
    
    var menuAction: ButtonAction
    var cartAction: ButtonAction
    
    
    var body: some View {
        ZStack {
            HStack {
                Button {
                    menuAction()
                } label: {
                    Image(systemName: "text.justifyleft")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .tint(.black)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 20)
                
                NavigationLink {
                    HomeView()
                } label: {
                    VStack{
                        Text("Shop")
                            .foregroundColor(.black)
                        Text("Smart")
                            .foregroundColor(.black)
                    }
                }

                
               

                Button {
                   cartAction()
                } label: {
                    Image(systemName: "bag")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .tint(.black)
                }
                .frame(width: 24, height: 24)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing, 20)
                
            }
            
        }
        
        .frame(maxWidth: .infinity)
        .frame(height: 56)
        .background(.white)
        .zIndex(1)
        .shadow(radius: 0.3)
        
    }
}

//struct HeaderView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeaderView(menuAction: nil, cartAction: nil)
//    }
//}

