//
//  ViewController.swift
//  Lessons.Counter
//
//  Created by Aleksandr Nichiporovich on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {

    private var counterState: Int = 0
    
    @IBOutlet weak var counterStateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.counterState = 0
        self.displayCounterState()
    }
    
    @IBAction func increaseButtonDidTap(_ sender: Any) {
        self.counterState += 1
        self.displayCounterState()
    }
    
    @IBAction func decreaseButtonDidTap(_ sender: Any) {
        self.counterState -= 1
        self.displayCounterState()
    }
    
    private func displayCounterState() {
        self.counterStateLabel.text = "\(self.counterState)"
    }
}

