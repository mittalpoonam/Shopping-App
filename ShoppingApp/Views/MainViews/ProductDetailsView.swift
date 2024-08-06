//
//  ProductDetailsView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 05/08/24.
//

import SwiftUI

struct ProductDetailsView: View {
    
    
    @State var presentSideMenu = false
    @State var presentSideCart = false
    
    var product: Product
    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            ZStack {
                VStack(spacing: 0){ //START VSTACK
                    ScrollView {
                        TabView {
                            ForEach(0..<product.images.count, id: \.self){ i in
                                Image(product.images[i])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(height: 500)
                                    .clipped()
                                
                            }
                        }
                        .tabViewStyle(.page)
                        .indexViewStyle(.page(backgroundDisplayMode: .always))
                        .frame(height: 500)
                        .padding([.leading, .trailing], 20)
                        
                        VStack(alignment: .leading) {
                            HStack(alignment: .top) {
                                Text(product.title)
                                    .font(.title2)
                                    .multilineTextAlignment(.leading)
                                    .foregroundColor(.black)
                                
                                Spacer()
                                Image(systemName: "square.and.arrow.up")
                                    .resizable()
                                    .scaledToFit()
                                
                                    .frame(width: 20, height: 20)
                                
                                
                            }
                            
                            Text("$\(product.price)")
                                .font(.title)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.orange)
                        }
                        .frame(maxWidth: .infinity)
                        .padding([.leading, .trailing], 20)
                        
                        Text("DESCRIPTION")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.top, 20)
                        
                        Text("\(product.description)")
                            .font(.title2)
                            .foregroundColor(.black)
                            .padding(.top, 3)
                            .padding([.leading, .trailing], 20)
                        
                        
                        Text("You may also like")
                            .font(.title)
                            .foregroundColor(.black)
                            .padding(.top, 20)
                        
                        Image("Divider")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                            .padding(.top, 10)
                        
                        VStack {
                            HStack(alignment: .top) {
                                ProductItemView(product: product2)
                                ProductItemView(product: product3)
                            }
                            HStack(alignment: .top) {
                                ProductItemView(product: product4)
                                ProductItemView(product: product5)
                            }
                            HStack(alignment: .center,spacing: 8) {
                                Text("Explore More")
                                    .font(.title2)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.black)
                                
                                
                                Image(systemName: "arrow.forward")
                                    .frame(width: 18, height: 18)
                            }
                            .padding(12)
                        }
                        FooterView()
                        
                    }
                } // END VSTACK
                .padding(.top, 56)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(alignment: .top) {
                HeaderView {
                    presentSideMenu.toggle()
                } cartAction: {
                    presentSideCart.toggle()
                }
               

            }
            .overlay(alignment: .bottom) {
                ZStack {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .tint(.white)
                            
                            Text("Add to Basket")
                                .font(.title2)
                                .kerning(0.14)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                            
                            Spacer()
                            Image(systemName: "suit.heart")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                                .tint(.white)
                        }
                        .padding([.leading, .trailing], 24)

                    }
             
                }
                .frame(height: 86)
                .frame(maxWidth: .infinity)
                .background(.black)
            }
            SideMenu()
            SideCart()
        }
        .navigationBarHidden(true)
        .ignoresSafeArea(edges: .bottom)
    }
    
    
    @ViewBuilder
    private func SideMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
    
    @ViewBuilder
    private func SideCart() -> some View {
        SideView(isShowing: $presentSideCart, content: AnyView (SideCartViewContents(presentSideMenu: $presentSideCart)), direction: .trailing)
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailsView(product: product2)
    }
}
