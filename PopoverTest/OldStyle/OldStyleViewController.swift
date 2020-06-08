//
//  OldStyleViewController.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-08.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import UIKit
import SwiftUI

class OldStyleViewController: UIViewController {
    
    private let popoverFramework = PopoverFramework()
    
    @IBAction func showPopoverInUIKitAction(_ sender: UIView) {
        popoverFramework.showPopover(from: sender, in: self)
    }
    
    @IBAction func showSwiftUIScreen(_ sender: Any) {
        let vc = UIHostingController(rootView: SwiftUIScreen())
        vc.modalPresentationStyle = .automatic
        present(vc, animated: true)
    }
}
