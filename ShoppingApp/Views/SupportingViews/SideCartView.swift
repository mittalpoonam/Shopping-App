//
//  SideCartView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct SideCartViewTemp: View {
    
    @State var presentSideMenu: Bool = true
    
    var body: some View {
        ZStack {
            SideCartMenu()
        }.background(.black)
    }
    
    @ViewBuilder
    private func SideCartMenu() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView (SideCartViewContents(presentSideMenu: $presentSideMenu)), direction: .trailing)
    }
}

struct SideCartViewTemp_Previews: PreviewProvider {
    static var previews: some View {
        SideCartViewTemp()
    }
}

struct SideCartViewContents: View {
    
    @Binding var presentSideMenu: Bool
    @State private var totalPrice: Int = 0
    
    var body: some View {
        VStack(alignment: .leading) {
            SideMenuTopView()
                .padding([.leading, .trailing], 20)
            
            Text("CART")
                .font(.title2)
                .foregroundColor(.black)
                .padding([.leading, .trailing], 20)
            
            if cartItems.count > 0 {
                CartFullView()
            }else{
                EmptyCartView()
            }
            
            
            
            NavigationLink {
                CheckoutView()
            } label: {
                HStack {
                    Image(systemName: "bag")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .tint(.white)
                      
                    
                Text("Continue Shopping")
                        .font(.title2)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                    
                }
                .frame(height: 56)
                .frame(maxWidth: .infinity)
                .background(.black)
            }

        }
        .onAppear{
            updateCartValue()
        }
    }
    
    @ViewBuilder
    func SideMenuTopView() -> some View {
        VStack {
            HStack {
                Button {
                    presentSideMenu.toggle()
                } label: {
                    Image("close")
                        .resizable()
                        .scaledToFit()
                }
                .frame(width: 34, height: 34)
                Spacer()
                

            }
        }
        .frame(maxWidth: .infinity)
        .padding(.leading, 10)
        .padding(.top, 40)
        .padding(.bottom, 30)
    }
    
    @ViewBuilder
    func EmptyCartView() -> some View {
        VStack(alignment: .leading) {
            Text("You have no items in your shopping bag.")
                .font(.title2)
                .multilineTextAlignment(.center)
                .foregroundColor(Color.gray)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    @ViewBuilder
    func CartFullView() -> some View {
        VStack(alignment: .leading) {
            VStack {
                ScrollView(.vertical) {
                    ForEach(0..<cartItems.count, id: \.self){ i in
                        
                        if cartItems[i].count > 0 {
                            CartItemView(item: cartItems[i]) {
                                updateCartValue()
                            }
                        }
                        
                    }
                }.padding([.leading, .trailing], 20)
                
                VStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(height: 1)
                        .background(.gray)
                    
                    HStack {
                        Text("SUB TOTAL")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Text("$\(totalPrice)")
                            .font(.title2)
                            .foregroundColor(.orange)
                    }
                    .padding([.leading, .trailing], 20)
                    
                    Text("*shipping charges, taxes and discount codes are calculated at the time of accounting. ")
                        //.font(.title3)
                        .foregroundColor(.gray)
                        .frame(height: 72, alignment: .topLeading)
                        .padding([.leading, .trailing], 20)
                }
                .frame(height: 100)
            }.frame(maxWidth: .infinity, maxHeight:.infinity)
        }.frame(maxWidth: .infinity, maxHeight:.infinity)
    }
       
    func updateCartValue() {
        var value: Int = 0
        for item in cartItems {
            value += (item.count * item.product.price)
        }
        totalPrice = value
    }
    
    
}
