//
//  UserInfoView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("@username")
                .foregroundColor(.white)
            Spacer()
                .frame(height: 10)
            Text("Party Like an animal 😂")
                .foregroundColor(.white)
            Spacer()
                .frame(height: 10)
            Text("🎵 - Dawin - Freak Freak!")
                .foregroundColor(.white)
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
