//
//  Navigatable.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-09.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import UIKit
import SwiftUI

protocol Navigatable: UIViewController { }

extension Navigatable {
    
    func showSwiftUIModal(sender: UIView?) {
        let vc = UIHostingController(rootView: SwiftUIScreen())
        vc.modalPresentationStyle = .automatic
        present(vc, animated: true)
    }
}
