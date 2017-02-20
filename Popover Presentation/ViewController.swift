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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == Segue.popoverSegue.rawValue {
            segue.destination.modalPresentationStyle = .popover
            segue.destination.popoverPresentationController?.delegate = self
            (segue.destination as! PopoverViewController).popupNavigationDelegate = self
        }
    }

    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    func popupSelectionMade(_ segue: String) {
        if segue == Segue.pushToSecondSegue.rawValue {
            self.presentedViewController?.dismiss(animated: true, completion: { () -> Void in
                self.performSegue(withIdentifier: segue, sender: self)
            })
        }
    }
}

