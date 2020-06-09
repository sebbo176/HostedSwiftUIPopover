//
//  PopoverFramework.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-08.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import UIKit

class PopoverFramework {
    
    func showPopover(from sourceView: UIView, in sourceViewController: UIViewController) {
        let alert = UIAlertController(title: "PopoverTitle", message: "Message", preferredStyle: .actionSheet)
        alert.popoverPresentationController?.sourceView = sourceView
        
        alert.addAction(UIAlertAction(title: "Print in console", style: .default , handler: { _ in
            print("Print from popover")
        }))

        sourceViewController.present(alert, animated: true, completion: {})
    }
}
