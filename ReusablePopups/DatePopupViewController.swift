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
    
    var formattedDate : String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: datePicker.date)
    }
    
    var formattedTime : String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter.string(from: datePicker.date)
    }
    
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
        NotificationCenter.default.post(name: .saveDateTime, object: self)
        dismiss(animated: true)
    }
    
    
    public enum DatePopupChoice{
        case Date
        case Time
    }
}
