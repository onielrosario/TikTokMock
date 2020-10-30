//
//  TabViewModel.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import Combine
import SwiftUI

enum TabState {
    case home, discover, add, notification, profile
    
    func makeForegroundColor(mode: TabState) -> Color {
        if self == mode {
            return .white
        } else {
            return .clear
        }
    }
}


class TabViewModel: ObservableObject {
    var items: [Item] = []
    @Published var mode: TabState
    
    
    init() {
        self.mode = .home
        self.items = [
            Item(name: "house", mode: .home, action: homePage),
            Item(name: "magnifyingglass", mode: .discover, action: discover),
            Item(name: "plus", mode: .add, action: add),
            Item(name: "bubble.left", mode: .notification, action: notification),
            Item(name: "person", mode: .profile, action: profile)
        ]
    }
    
    func homePage() {
        mode = .home
        print("homepage pressed")
    }
    
    func discover() {
        mode = .discover
        print("discover pressed")
    }
    
    func add() {
        mode = .add
        print("add pressed")
    }
    
    func notification() {
        mode = .notification
        print("notification pressed")
    }
    
    func profile() {
        mode = .profile
        print("profile pressed")
    }
}
