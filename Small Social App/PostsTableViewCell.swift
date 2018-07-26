//
//  PostsTableViewCell.swift
//  Small Social App
//
//  Created by Dev mobile on 2018-06-04.
//  Copyright © 2018 Skrumble. All rights reserved.
//

import UIKit
import SDWebImage

class PostsTableViewCell: UITableViewCell {

    @IBOutlet weak var testView: FLAnimatedImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setup(url: String) {
        let url = URL.init(string: url)
        
        testView.sd_setImage(with: url, placeholderImage: nil, options: [], progress: { [weak self] ( receivedSize, expectedSize, url ) in
//            DispatchQueue.main.async {
//                let progress: Float = Float(receivedSize) / Float(expectedSize)
//                self?.progressView.progress = progress
//                if progress >= 1 {
//                    self?.progressView.isHidden = true
//                }
//            }
        }) { [weak self] (image, error, cacheType, imageUrl) in
        }
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        testView.sd_cancelCurrentImageLoad()
        testView.image = nil
        testView.animatedImage = nil
    }
    
}
