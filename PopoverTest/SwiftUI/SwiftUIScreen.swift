//
//  SwiftUIScreen.swift
//  PopoverTest
//
//  Created by Sebastian Bolling on 2020-06-08.
//  Copyright © 2020 Sebastian Bolling. All rights reserved.
//

import Foundation
import SwiftUI

struct SwiftUIScreen: View {
    
    private let popoverFramework = PopoverFramework()
    private let activeViewController = UIApplication.shared.keyWindow?.rootViewController

        var body: some View {
            VStack {
                Text("Swift UI Screen")
                Button(action: {
                    self.popoverFramework.showPopover(from: self.activeViewController!.view, in: self.activeViewController!)
                }) {
                    Text("Show popover")
                }
            }
        }
}
