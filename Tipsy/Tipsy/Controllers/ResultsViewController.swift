//
//  ResultsViewController.swift
//  Tipsy
//
//  Created by Mario Alvarado on 13/04/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bill = "0.0"
    var peopleNumber = 2
    var tipPercentage = 10
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        totalLabel.text = bill
        settingsLabel.text = "Split between \(peopleNumber) people, with \(tipPercentage)% tip."
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
