//
//  InteractionViewModel.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import Combine


class InteractionViewModel: ObservableObject {
    @Published var buttons: [ButtonContent] = []
    
    init() {
        self.buttons = [
            ButtonContent(
                image: .heart,
                action: { self.like() },
                amount: "89.3k"),
            ButtonContent(
                image: .comment,
                action: { self.comment() },
                amount: "694"),
            ButtonContent(
                image: .share,
                action: { self.share() },
                amount: "901")
            
        ]
    }
    
    private func like() {
        print("like pressed")
    }
    
    private func comment() {
        print("comment pressed")
    }
    
    private func share() {
        print("share pressed")
    }
}
