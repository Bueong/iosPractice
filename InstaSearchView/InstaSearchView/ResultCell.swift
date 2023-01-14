//
//  ResultCell.swift
//  InstaSearchView
//
//  Created by 박철진 on 2023/01/14.
//

import UIKit

class ResultCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    
    func configure(_ imageName: String) {
        thumbnailImageView.image = UIImage(named: imageName)
    }
}
