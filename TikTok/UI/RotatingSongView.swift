//
//  RotatingSongView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI

struct RotatingSongView: View {
    @State var angle: Double = 0.0
    @State var isAnimating = false
    
    var foreverAnimation: Animation {
        Animation.linear(duration: 8.0)
            .repeatForever(autoreverses: false)
    }
    
    var body: some View {
        ZStack {
            Image(uiImage: Asset.image(.vynil))
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            Image(uiImage: Asset.image(.dawin))
                .resizable()
                .frame(width: 40, height: 40)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
        }
            .rotationEffect(Angle(degrees: self.isAnimating ? 360.0 : 0.0))
            .animation(self.foreverAnimation)
            .onAppear {
                self.isAnimating = true
        }
    }
}

struct RotatingSongView_Previews: PreviewProvider {
    static var previews: some View {
        RotatingSongView()
    }
}
