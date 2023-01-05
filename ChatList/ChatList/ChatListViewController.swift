//
//  ChatListViewController.swift
//  ChatList
//
//  Created by 박철진 on 2023/01/05.
//

import UIKit

class ChatListViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // CollectionView needs Data, Presentation, Layout
        
        collectionView.dataSource = self
        collectionView.delegate = self
    }
}

extension ChatListViewController: UICollectionViewDataSource {
    
}
