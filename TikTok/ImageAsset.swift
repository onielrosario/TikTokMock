//
//  ImageAsset.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import UIKit

enum ImageAsset: String {
    case selfie
    case profile
    case heart
    case dawin
    case share
    case comment
    case vynil
    
    var value: UIImage! {
        return UIImage(named: self.rawValue)
    }
}
