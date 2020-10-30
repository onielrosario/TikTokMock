//
//  InteractionButton.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import SwiftUI

struct ButtonContent {
    let image: ImageAsset
    let action: () -> Void
    let amount: String
}

struct InteractionButton: View {
    let content: ButtonContent
    
    var body: some View {
        Button(action: {
            content.action()
        }, label: {
            VStack(spacing: 10) {
                if content.image == .share {
                    Image(uiImage: Asset.image(content.image).withRenderingMode(.alwaysOriginal))
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                } else {
                    Image(uiImage: Asset.image(content.image).withRenderingMode(.alwaysTemplate))
                        .resizable()
                        .frame(width: 50, height: 50)
                        .foregroundColor(.white)
                }
                Text(content.amount)
                    .foregroundColor(Color.white)
            }
        })
    }
}

struct InteractionButton_Previews: PreviewProvider {
    static var previews: some View {
        InteractionButton(content: ButtonContent(image: .heart, action: {
            print("action")
        }, amount: "89.3k"))
    }
}
