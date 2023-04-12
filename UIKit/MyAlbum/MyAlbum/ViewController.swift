//
//  ViewController.swift
//  MyAlbum
//
//  Created by 박철진 on 2023/04/12.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showAlert(_ sender: Any) {
        let alert = UIAlertController(title: "Hello Bro", message: "Really Nice to meet you", preferredStyle: .alert)
        
        let thanks = UIAlertAction(title: "Thanks 👍", style: .default)
        let noThanks = UIAlertAction(title: "NO Thanks", style: .destructive)
        
        alert.addAction(thanks)
        alert.addAction(noThanks)
        alert.preferredAction = thanks
        
        present(alert, animated: true)
    }
    
    
}
