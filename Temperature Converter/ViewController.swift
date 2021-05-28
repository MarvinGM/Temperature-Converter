//
//  ViewController.swift
//  Temperature Converter
//
//  Created by Amben on 5/28/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var conversionsLabel: UILabel!
    
    var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertClicked(_ sender: Any) {
        
        if let result = tempEntry.text{
            if (result == "") {
                return
            } else{
                if let num = Double(result){
                    let output = num * (9/5) + 32
                    resultLabel.text = String(output)
                    updateCount()
                }
            }
        }
    }
    
    func updateCount() {
        count += 1
        conversionsLabel.text = String(count) + " conversions"
    }
}

