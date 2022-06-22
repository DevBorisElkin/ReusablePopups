//
//  PopupDelegate.swift
//  ReusablePopups
//
//  Created by test on 21.06.2022.
//

import Foundation

// restrict all inheritors of this protocol to be only reference type
protocol PopupDeleate : AnyObject{
    func popupValueSelected(value: String)
}
