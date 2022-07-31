//
//  LoginView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI


struct LoginView: UIViewRepresentable {
    func makeCoordinator() -> LoginCoordinator {
        return LoginCoordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> some UIView {
        let button = UIButton()
        
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        button.addTarget(self, action: #selector(LoginCoordinator.didTapButton), for: .touchUpInside)
        
        return button
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
