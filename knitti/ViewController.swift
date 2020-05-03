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
        setCountLabel()
    }
    
    @IBAction func countTapped(_ sender: Any) {
        changeCount(by: 1)
        setCountLabel()
    }
    
    @IBAction func undoTapped(_ sender: Any) {
        changeCount(by: -1)
        setCountLabel()
    }

    func changeCount(by: Int) -> Void {
        self.countNum = max(self.countNum + by, 0)
    }

    func setCountLabel () -> Void {
        count.setTitle("\(countNum)", for: UIControl.State.normal)
    }
}
