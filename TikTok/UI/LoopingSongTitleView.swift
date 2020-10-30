//
//  LoopingSongTitleView.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI

struct Result: Identifiable {
    var id = UUID()
    var score: Int
}

struct LoopingSongTitleView: View {
    let results = [Result(score: 8), Result(score: 5), Result(score: 10)]
    
    var body: some View {
        VStack {
            ForEach(results) { result in
                Text("Result: \(result.score)")
            }
        }
    }
}

struct LoopingSongTitleView_Previews: PreviewProvider {
    static var previews: some View {
        LoopingSongTitleView()
    }
}
