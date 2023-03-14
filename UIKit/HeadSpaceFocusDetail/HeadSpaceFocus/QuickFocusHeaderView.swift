//
//  QuickFocusHeaderView.swift
//  HeadSpaceFocus
//
//  Created by 박철진 on 2023/02/20.
//

import UIKit

class QuickFocusHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    func configure(_ title: String) {
        titleLabel.text = title
    }
}
