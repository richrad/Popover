//
//  PopoverViewController.swift
//  Popover Presentation
//
//  Created by Richard Allen on 12/26/15.
//  Copyright © 2015 SoftwareDad. All rights reserved.
//

import UIKit

protocol PopupNavigationDelegate {
    func popupSelectionMade(segue: String)
}

class PopoverViewController: UIViewController {

    var popupNavigationDelegate: PopupNavigationDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func dismissButtonPressed(sender: AnyObject?) {
        self.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func pushButtonPressed(sender: AnyObject?) {
        self.popupNavigationDelegate?.popupSelectionMade(Segue.pushToSecondSegue.rawValue)
    }

}
