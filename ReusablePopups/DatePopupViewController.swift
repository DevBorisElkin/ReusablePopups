//
//  DatePopupViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class DatePopupViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
