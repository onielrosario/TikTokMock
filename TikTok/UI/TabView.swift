//
//  TabView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import SwiftUI

struct Item {
    let name: String
    let mode: TabState
    let action: () -> Void
}

struct TabView: View {
    @ObservedObject var vm = TabViewModel()
    var body: some View {
        VStack {
            if vm.mode == .home {
                Color.white
                    .frame(
                        maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        maxHeight: 1)
                    .opacity(0.5)
            } else {
                Color.black
                    .frame(
                        maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
                        maxHeight: 1)
                    .opacity(0.5)
            }
            makeTabView(mode: vm.mode)
                .padding()
        }
        .background(vm.mode == .home ? Color.black : .white)
     
    }
}

private extension TabView {
    func makeTabView(mode: TabState) -> some View {
        HStack {
            ForEach(vm.items, id: \.name) { item in
                Spacer()
                Button(action: {
                    item.action()
                }, label: {
                    VStack {
                        Image(systemName: item.name)
                            .frame(width: 30, height: 30)
                            .foregroundColor(vm.mode == .home ? Color.white : .black)
                            .background(vm.mode == .home ? Color.black : .white)
                    }
                })
                Spacer()
            }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
