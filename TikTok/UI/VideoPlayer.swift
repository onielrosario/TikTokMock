//
//  VideoPlayer.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/13/20.
//

import SwiftUI
import UIKit
import AVKit


struct LoopingPlayer: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        return PlayerUIView(frame: .zero)
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}

class PlayerUIView: UIView {
    private var playerLayer = AVPlayerLayer()
    private var playerLooper: AVPlayerLooper?
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let fileUrl = Bundle.main.url(forResource: "amazon", withExtension: "mp4")!
        let playerItem = AVPlayerItem(url: fileUrl)
        
        let player  = AVQueuePlayer(playerItem: playerItem)
        playerLayer.player = player
        playerLayer.videoGravity = .resizeAspectFill
        layer.addSublayer(playerLayer)
        
        //loop
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem )
        
        player.play()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

struct VideoPlayer_Previews: PreviewProvider {
    static var previews: some View {
        LoopingPlayer()
    }
}
