//
//  ButtonView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI


struct ButtonView: UIViewRepresentable {
    @Binding var username: String
    
    var text:String
    
    
    func makeCoordinator() -> ButtonCoordinator {
        return ButtonCoordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> some UIView {
        let button = UIButton()
        
        button.setTitle(text, for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.masksToBounds = true
        button.clipsToBounds = true
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
        button.addTarget(context.coordinator, action: #selector(ButtonCoordinator.didTapButton), for: .touchUpInside)
        
        return button
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
