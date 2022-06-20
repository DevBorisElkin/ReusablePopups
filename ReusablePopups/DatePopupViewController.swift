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
    
    var datePopupChoice: DatePopupChoice = .Date
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(datePopupChoice == .Date){
            titleLabel.text = "Select Date"
            datePicker.datePickerMode = .date
            saveButton.setTitle("Save Date", for: .normal)
        }else if (datePopupChoice == .Time){
            titleLabel.text = "Select Time"
            datePicker.datePickerMode = .time
            saveButton.setTitle("Save Time", for: .normal)
        }
    }
    
    @IBAction func saveDate_TouchUpInside(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    
    public enum DatePopupChoice{
        case Date
        case Time
    }
}
