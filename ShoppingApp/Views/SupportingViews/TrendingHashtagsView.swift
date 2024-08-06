//
//  TrendingHashtagsView.swift
//  ShoppingApp
//
//  Created by poonam mittal on 04/08/24.
//

import SwiftUI

struct TrendingHashtagsView: View {
    var body: some View {
        VStack {
            Text("@Trending")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .foregroundColor(.black)
            
            HashtagsView(tags: hastags)
                .padding([.leading, .trailing], 30)
        }
    }
}

struct TrendingHashtagsView_Previews: PreviewProvider {
    static var previews: some View {
        TrendingHashtagsView()
    }
}
