//
//  UIButton+Closure.swift
//  ClosureUI
//
//  Created by asduk on 14-6-19.
//  Copyright (c) 2014 asduk. All rights reserved.
//

import UIKit
import Foundation

typealias Closure=(sender:UIButton_Closure)->Void


class UIButton_Closure: UIButton {

    var aClosure:Closure?

    func handelEventWithClosure(event:UIControlEvents,closure:Closure?) ->Void{
    
        aClosure = closure
        
        self.addTarget(self, action: NSSelectorFromString(self.eventName(event)), forControlEvents: event)
 
    }
    
    
    func eventName(event:UIControlEvents) -> NSString{
        switch (event){
        case UIControlEvents.TouchCancel: return "TouchCanel";
        case UIControlEvents.TouchDown: return "TouchDown";
        case UIControlEvents.TouchDownRepeat: return "TouchDownRepeat";
        case UIControlEvents.TouchDragEnter: return "TouchDragEnter";
        case UIControlEvents.TouchDragExit: return "TouchDragExit";
        case UIControlEvents.TouchDragInside: return "TouchDragInside";
        case UIControlEvents.TouchDragOutside: return "TouchDragOutside";
        case UIControlEvents.TouchUpOutside: return "TouchUpOutside";
        case UIControlEvents.TouchUpInside: return "TouchUpInside";
        case UIControlEvents.ValueChanged: return "ValueChanged";
        case UIControlEvents.AllEditingEvents: return "AllEditingEvents";
        case UIControlEvents.AllEvents: return "AllEvents";
        case UIControlEvents.AllTouchEvents: return "AllTouchEvents";
        case UIControlEvents.EditingChanged: return "EditingChanged";
        case UIControlEvents.EditingDidBegin: return "EditingDidBegin";
        case UIControlEvents.EditingDidEnd: return "EditingDidEnd";
        case UIControlEvents.EditingDidEndOnExit: return "EditingDidEndOnExit";
            
        default : return "description"
        }
    }
    func callBack(events:UIControlEvents){
        if aClosure{
            aClosure!(sender:self)
        }
    }
    func AllTouchEvents(){
        self.callBack(UIControlEvents.AllTouchEvents)
    }
    func EditingChanged(){
        self.callBack(UIControlEvents.EditingChanged)
    }
    func EditingDidBegin(){
        self.callBack(UIControlEvents.EditingDidBegin)
    }
    func EditingDidEnd(){
        self.callBack(UIControlEvents.EditingDidEnd)
    }
    func EditingDidEndOnExit(){
        self.callBack(UIControlEvents.EditingDidEndOnExit)
    }
    func TouchDragInside(){
        self.callBack(UIControlEvents.TouchDragInside)
    }
    func TouchDragOutside(){
        self.callBack(UIControlEvents.TouchDragOutside)
    }
    func TouchUpOutside(){
        self.callBack(UIControlEvents.TouchUpOutside)
    }
    func ValueChanged(){
        self.callBack(UIControlEvents.ValueChanged)
    }
    func AllEditingEvents(){
        self.callBack(UIControlEvents.AllEditingEvents)
    }
    func TouchCanel(){
        self.callBack(UIControlEvents.TouchCancel)
    }
    func TouchDragExit(){
        self.callBack(UIControlEvents.TouchDragExit)
    }
    func TouchDragEnter(){
        self.callBack(UIControlEvents.TouchDragEnter)
    }
    func TouchDownRepeat(){
        self.callBack(UIControlEvents.TouchDownRepeat)
    }
    func TouchDown(){
        self.callBack(UIControlEvents.TouchDown)
    }
    func TouchUpInside(){
        self.callBack(UIControlEvents.TouchUpInside)
    }
}
