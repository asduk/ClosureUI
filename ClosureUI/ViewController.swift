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
        // Do any additional setup after loading the view, typically from a nib.
        var btn = UIButton_Closure.buttonWithType(UIButtonType.Custom) as?UIButton_Closure
        btn!.frame=CGRectMake(150, 150, 50, 50)
        btn!.backgroundColor=UIColor.redColor()
        btn!.handelEventWithClosure(UIControlEvents.TouchUpInside, closure: {
            (sender:UIButton_Closure) in
                println("\(sender)closure call back")
            });
        self.view.addSubview(btn!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

