//
//  SelectTimeViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class SelectTimeViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var observer : NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        observer = NotificationCenter.default.addObserver(forName: .saveDateTime, object: nil, queue: .main) {    notification in
            let dateViewController = notification.object as! DatePopupViewController
            self.dateLabel.text = dateViewController.formattedDate
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        NotificationCenter.default.removeObserver(observer)
    }
    
    @IBAction func selectTime_TouchUpInside(_ sender: Any) {
        let sb = UIStoryboard(name: "DatePupupViewController", bundle: nil)
        let popup = sb.instantiateInitialViewController()! // as! DatePopupViewController
        
        if var datePopupViewController = popup as? DatePopupViewController{
            datePopupViewController.datePopupChoice = .Time
        }
        
        self.present(popup, animated: true)
    }
}
