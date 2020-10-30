//
//  TopTabView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI

struct TopTabView: View {
    @Binding var state: TopTabState
    
    var body: some View {
        HStack {
            Button(action: {
                state = .following
            }, label: {
                Text("Following")
                    .foregroundColor(.white)
            })
            
            Text("|")
                .foregroundColor(.white)
            
            Button(action: {
                state = .forYou
            }, label: {
                Text("For You")
                    .foregroundColor(.white)
            })
            
        }
    }
}

struct TopTabView_Previews: PreviewProvider {
    static var previews: some View {
        TopTabView(state: .constant(.forYou))
    }
}
