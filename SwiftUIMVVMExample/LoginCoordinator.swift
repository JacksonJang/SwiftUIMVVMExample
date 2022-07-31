//
//  ButtonCoordinator.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI

class ButtonCoordinator: NSObject {
    var parent: ButtonView?
    
    init(parent: ButtonView) {
        self.parent = parent
        super.init()
        
    }
    
    @objc
    func didTapButton() {
        print("didTapButton")
    }
}
