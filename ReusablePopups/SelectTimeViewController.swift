//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class SelectTimeViewController: UIViewController {

    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let sb = UIStoryboard(name: "DatePupupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! // as! DatePopupViewController
        
        if var datePopupViewController = popup as? DatePopupViewController{
            datePopupViewController.datePopupChoice = .Time
        }
        
        self.present(popup, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    


}
