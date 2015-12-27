//
//  ViewController.swift
//  Popover Presentation
//
//  Created by Richard Allen on 12/26/15.
//  Copyright © 2015 SoftwareDad. All rights reserved.
//

import UIKit

enum Segue: String {
    case pushToSecondSegue
    case popoverSegue
}

class ViewController: UIViewController, UIPopoverPresentationControllerDelegate, PopupNavigationDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == Segue.popoverSegue.rawValue {
            segue.destinationViewController.modalPresentationStyle = .Popover
            segue.destinationViewController.popoverPresentationController?.delegate = self
            (segue.destinationViewController as! PopoverViewController).popupNavigationDelegate = self
        }
    }

    func adaptivePresentationStyleForPresentationController(controller: UIPresentationController) -> UIModalPresentationStyle {
        return .None
    }
    
    func popupSelectionMade(segue: String) {
        if segue == Segue.pushToSecondSegue.rawValue {
            self.presentedViewController?.dismissViewControllerAnimated(true, completion: { () -> Void in
                self.performSegueWithIdentifier(segue, sender: self)
            })
        }
    }
}

