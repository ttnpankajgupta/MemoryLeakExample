//
//  NewViewController.swift
//  MemoryLeakExample
//
//  Created by Pankaj Gupta on 06/03/24.
//

import UIKit

class NewViewController: UIViewController {
    
    let titleString = "New View Controller"
    
    lazy var printName: (()->()) = {
        self.title = self.titleString
        print(self.titleString)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    deinit {
        print("De init successfully")
    }
    
    @IBAction func dismissVC(_ sender: UIButton) {
        self.dismiss(animated: true)
    }

}
