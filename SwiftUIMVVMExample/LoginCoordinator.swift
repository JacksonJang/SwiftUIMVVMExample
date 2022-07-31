//
//  LoginCoordinator.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI

class LoginCoordinator: NSObject {
    var parent: LoginView?
    
    init(parent: LoginView) {
        self.parent = parent
        super.init()
        
    }
    
    @objc
    func didTapButton() {
        print("didTapButton")
    }
}
