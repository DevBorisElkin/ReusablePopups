//
//  SecondNotifCenterViewController.swift
//  ReusablePopups
//
//  Created by test on 23.06.2022.
//

import UIKit

class SecondNotifCenterViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    // observer can be made 'weak' to break the retain cycle
    var observer : NSObjectProtocol?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: .main)
        // can also use [unowned vc = self] // unowned - the reference will never be nil (so don't need to use '?')
        { [weak self]   notification in
            let dateViewController = notification.object as! DatePopupViewController
            self?.dateLabel.text = dateViewController.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        NotificationCenter.default.removeObserver(observer)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toDatePopupViewControllerSegue"){
            let popup = segue.destination
            
            if var popupViewController = popup as? DatePopupViewController{
                popupViewController.datePopupChoice = .Date
            }
        }
    }
    
    deinit{
        print("SecondNotifCenterViewController was de-initialized")
    }
}
