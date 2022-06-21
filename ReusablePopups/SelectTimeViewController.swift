//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class SelectTimeViewController: UIViewController{
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let sb = UIStoryboard(name: "DatePupupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! // as! DatePopupViewController
        
        var datePopupViewController = popup as! DatePopupViewController
        datePopupViewController.datePopupChoice = .Time
        datePopupViewController.delegate = self
        
        self.present(popup, animated: true)
    }
    
    
}

extension SelectTimeViewController : PopupDeleate{
    func popupValueSelected(value: String) {
        dateLabel.text = value
    }
}
