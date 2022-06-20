//
//  ViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLabel: UILabel!
    
    var observer : NSObjectProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Old way to handle notifications
        // NotificationCenter.default.addObserver(self, selector: #selector(handlePopupClosing), name: .saveDateTime, object: nil)
    }
    
    //    Old way to handle notifications
    //    @objc func handlePopupClosing(notification: Notification){
    //        let dateViewController = notification.object as! DatePopupViewController
    //        dateLabel.text = dateViewController.formattedDate
    //    }
    
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "toDatePopupViewControllerSegue"){
            let popup = segue.destination
            
            if var popupViewController = popup as? DatePopupViewController{
                popupViewController.datePopupChoice = .Date
            }
        }
    }
}

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view.backgroundColor = .magenta
    }
}

