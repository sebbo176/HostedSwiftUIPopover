//
//  SwiftUIScreen.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-08.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import SwiftUI

struct SwiftUIScreen: View {
    
    private let popoverFramework = PopoverFramework()
    private let keyWindow = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
    
    
    var body: some View {
        VStack {
            Text("Swift UI Screen")
            Button(action: {
                self.popoverFramework.showPopover(from: self.topViewController.view, in: self.topViewController)
            }) {
                Text("Show popover")
            }
            Spacer()
        }
    }
}


private extension SwiftUIScreen {
    
    var topViewController: UIViewController {
        if var topController = self.keyWindow?.rootViewController {
            while let presentedViewController = topController.presentedViewController {
                topController = presentedViewController
            }
            return topController
        }
        fatalError()
    }
}
