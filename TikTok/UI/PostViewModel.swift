//
//  PostViewModel.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import Combine


enum TopTabState {
    case following, forYou
}

class PostViewModel: ObservableObject {
    @Published var tabState: TopTabState
    
    
    init() {
        self.tabState = .forYou
    }
}
