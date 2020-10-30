//
//  InteractionView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import SwiftUI

struct InteractionView: View {
    @ObservedObject var vm = InteractionViewModel()
    
    var body: some View {
        VStack(alignment: .trailing, spacing: 30) {
            Image(uiImage: Asset.image(.profile))
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .overlay(Circle()
                            .stroke(Color.white, lineWidth: 2)
                )
            
            ForEach(vm.buttons, id: \.image) { button in
                InteractionButton(content: button)
            }
            
            RotatingSongView()

        }
    }
}

struct InteractionView_Previews: PreviewProvider {
    static var previews: some View {
        InteractionView()
    }
}
