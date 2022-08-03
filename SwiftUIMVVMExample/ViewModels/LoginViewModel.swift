//
//  LoginViewModel.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/08/02.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var model:LoginModel!
    
    let modelKey : String = "user_info"
    
    func saveUser(username:String, password:String, completion:@escaping (Bool) -> Void ) {
        if username != "jackson" && password != "1234" {
            completion(false)
            return
        }
        
        let model = LoginModel(username: username, password: password, isLogin: true)
        self.model = model
        
        completion(true)
    }
}
