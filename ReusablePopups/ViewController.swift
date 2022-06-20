//
//  ViewController.swift
//  ReusablePopups
//
//  Created by test on 19.06.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //view.backgroundColor = .brown
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

