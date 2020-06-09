//
//  OldStyleViewController.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-08.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import UIKit

class UIKitViewController: UIViewController, Navigatable {
    
    private let popoverFramework = PopoverFramework()
    
    @IBAction func showPopoverInUIKitAction(_ sender: UIView) {
        popoverFramework.showPopover(from: sender, in: self)
    }
    
    @IBAction func showSwiftUIScreen(_ sender: UIView?) {
        showSwiftUIModal(sender: sender)
    }
}
