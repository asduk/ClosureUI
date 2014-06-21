//
//  ViewController.swift
//  ClosureUI
//
//  Created by asduk on 14-6-19.
//  Copyright (c) 2014 asduk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.\
       
        
        //Xcode BUG
//        var alert = UIAlertView_Closure(title: "title", message: "message", delegate: nil, cancelButtonTitle: "cancel", otherButtonTitles: "button1" )
        
        
        
        var btn = UIButton_Closure.buttonWithType(UIButtonType.Custom) as?UIButton_Closure
        btn!.frame=CGRectMake(150, 150, 50, 50)
        btn!.backgroundColor=UIColor.redColor()
        btn!.handelEventWithClosure(UIControlEvents.TouchUpInside, closure: {
            (sender:UIButton_Closure) in
                println("\(sender)closure call back")
            var alert = UIAlertView_Closure()
            alert.title="title"
            alert.addButtonWithTitle("cacel")
            alert.addButtonWithTitle("button1")
            alert.message = "this is alert"
            alert.show()
            
            alert.handelButtonAtIndex({
                (buttonIndex:NSInteger) in
                if buttonIndex == 0{
                    println("click button index 0")
                }else if buttonIndex == 1{
                    println("click button index 1")
                }
                })
            
            });
        self.view.addSubview(btn!)
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

