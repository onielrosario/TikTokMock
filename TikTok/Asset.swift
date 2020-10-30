//
//  Asset.swift
//  TikTok
//
//  Created by Oniel Rosario on 10/12/20.
//

import UIKit

struct Asset {
    static func image(_ asset: ImageAsset) -> UIImage {
        return asset.value
    }
    
    static func systemImage(_ asset: ImageAsset) -> UIImage {
        return UIImage(systemName: asset.rawValue)!
    }
}
