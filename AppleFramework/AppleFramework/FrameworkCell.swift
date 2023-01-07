//
//  FrameworkCell.swift
//  AppleFramework
//
//  Created by 박철진 on 2023/01/08.
//

import UIKit

class FrameworkCell: UICollectionViewCell {
    @IBOutlet weak var thumbnailImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    func configure(_ framework: AppleFramework) {
        thumbnailImageView.image = UIImage(named: framework.imageName)
        
        nameLabel.text = framework.name
    }
}
