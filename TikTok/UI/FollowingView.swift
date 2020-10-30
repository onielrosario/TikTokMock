//
//  ProfileView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI

struct FollowingView: View {
    var body: some View {
        ZStack {
            Color.black
            Text("This is my following view")
                .foregroundColor(.white)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        FollowingView()
    }
}
