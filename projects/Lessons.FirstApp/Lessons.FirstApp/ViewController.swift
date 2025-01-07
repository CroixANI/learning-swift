//
//  ViewController.swift
//  Lessons.FirstApp
//
//  Created by Aleksandr Nichiporovich on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func mainButtonDidTap(_ sender: Any) {
        self.greetingLabel.textColor = .red
        self.greetingLabel.font = .boldSystemFont(ofSize: 25)
    }
    
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var greetingLabel: UILabel!
}

