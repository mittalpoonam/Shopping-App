//
//  SideMenuView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct SideMenuViewTemp: View {
    
    @State var presentSideMenu = true
    
    var body: some View {
        ZStack {
            SideMenuView()
        }.background(.black)
    }
    
    @ViewBuilder
    private func SideMenuView() -> some View {
        SideView(isShowing: $presentSideMenu, content: AnyView(SideMenuViewContents(presentSideMenu: $presentSideMenu)), direction: .leading)
    }
}

struct SideMenuViewTemp_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuViewTemp()
    }
}

struct SideMenuViewContents: View {
    @Binding var presentSideMenu: Bool
    
    var categories = [Categories.All.rawValue, Categories.Apparel.rawValue, Categories.Dress.rawValue, Categories.TShirt.rawValue, Categories.Bag.rawValue]
    
    @State private var selectedCategory: Int = 0
    
    
    var body: some View {
        HStack {
            ZStack {
                VStack(alignment: .leading) {
                    SideMenuTopView()
                    HStack(spacing: 10) {
                        GenderView(isSelected: selectedCategory == 0, title: "WOMEN")
                            .onTapGesture {
                                selectedCategory = 0
                            }
                        
                        GenderView(isSelected: selectedCategory == 1, title: "MEN")
                            .onTapGesture {
                                selectedCategory = 1
                            }
                        GenderView(isSelected: selectedCategory == 2, title: "KIDS")
                            .onTapGesture {
                                selectedCategory = 2
                            }
                    }
                    .frame(maxWidth: .infinity)
                    
                    ForEach(0..<categories.count, id: \.self){ i in
                        CategoryItem(title: categories[i]) {
                            
                        }
                        
                    }
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "phone")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text("(786) XXX-8616")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                    
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "mappin.and.ellipse")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 24, height: 24)
                            
                            Text("Store Loction")
                                .font(.title3)
                                .foregroundColor(.black)
                        }
                        .padding(.leading, 30)
                        .padding(.top, 20)
                    }
                    
                    VStack(alignment: .center) {
                        Image("Divider")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 140)
                            .padding(.top, 10)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.top, 20)

                    HStack(spacing: 30) {
                        Spacer()
                        Image("Twitter")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Image("Youtube")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        
                        Image("Instagram")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 24, height: 24)
                        Spacer()
                        
                    }
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding([.leading, .trailing], 20)
    }
    
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
    
    func CategoryItem(title: String, action: @escaping (() -> Void)) -> some View {
        
        Button {
            action()
        } label: {
            VStack(alignment: .leading) {
                Text(title)
                    .font(.title3)
                    .foregroundColor(.black)
            }
        }
        .frame(height: 50)
        .padding(.leading, 30)
        .padding(.top, 10)

        
    }
}
