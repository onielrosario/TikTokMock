//
//  PostView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import AVKit
import SwiftUI

struct PostView: View {
    @StateObject var vm = PostViewModel()
    
    var body: some View {
        if vm.tabState == .forYou {
            makeBlogPost()
        } else {
            makeFollowingView()
        }
    }
}


private extension PostView {
    func makeBlogPost() -> some View {
        ZStack {
            VStack(spacing: 0) {
                LoopingPlayer()
                TabView()
                    .padding(.bottom)
            }
            
            VStack {
                TopTabView(state: $vm.tabState)
                    .padding(.top, 60)
                Spacer()
                HStack {
                    VStack {
                        Spacer()
                        UserInfoView()
                            .padding(.bottom, 80)
                    }
                    Spacer()
                    HStack {
                        VStack {
                            Spacer()
                            InteractionView()
                                .padding(.bottom, 80)
                        }
                    }
                }
                .padding()
            }
        }
        .ignoresSafeArea(.all)
    }
    
    func makeFollowingView() -> some View {
        ZStack {
            VStack {
                TopTabView(state: $vm.tabState)
                    .padding(.top, 60)
                Spacer()
                FollowingView()
                    .padding()
                TabView()
            }
        }
        .ignoresSafeArea(.all)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
            PostView()
                .preferredColorScheme(.dark)
    }
}
