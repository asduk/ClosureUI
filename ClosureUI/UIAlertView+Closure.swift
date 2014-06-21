//
//  UIAlertView+Closure.swift
//  ClosureUI
//
//  Created by asduk on 14-6-21.
//  Copyright (c) 2014 asduk. All rights reserved.
//

import UIKit

typealias Closure_alert = (buttonIndex:NSInteger)->Void

class UIAlertView_Closure: UIAlertView,UIAlertViewDelegate {
    
    var closure :Closure_alert?
    
    func handelButtonAtIndex(ClickButtion:Closure_alert){
        closure=ClickButtion;
        self.delegate=self
    }
    
    func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int){
        if closure{
            closure!(buttonIndex: buttonIndex)
        }
    }
}

