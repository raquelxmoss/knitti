//
//  ViewController.swift
//  knitti
//
//  Created by Raquel Moss on 3/05/20.
//  Copyright © 2020 Raquel Moss. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var count: UIButton!
    var countNum:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        count.setTitle("\(countNum)", for: [])
    }
    
    @IBAction func countTapped(_ sender: Any) {
        self.countNum = max(self.countNum + 1, 0)
        count.setTitle("\(countNum)", for: [])
    }
    
    @IBAction func undoTapped(_ sender: Any) {
        self.countNum = max(self.countNum - 1, 0)
        count.setTitle("\(countNum)", for: [])
    }
}
