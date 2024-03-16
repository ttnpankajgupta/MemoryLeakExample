//
//  ViewController.swift
//  MemoryLeakExample
//
//  Created by Pankaj Gupta on 06/03/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func pushNewVC(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let vc = storyboard.instantiateViewController(withIdentifier: "NewViewController") as? NewViewController {
            vc.printName()
            self.present(vc, animated: true)
        }
    }
    
   
    
}

