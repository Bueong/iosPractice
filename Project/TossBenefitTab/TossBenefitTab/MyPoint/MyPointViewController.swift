//
//  MyPointViewController.swift
//  TossBenefitTab
//
//  Created by 박철진 on 2023/03/27.
//

import UIKit

class MyPointViewController: UIViewController {
    @IBOutlet weak var pointLabel: UILabel!
    
    var point: MyPoint = .default
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
    }

}
