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
    
    init() {
        getUser()
    }
    
    func getUser() {
        guard let data = UserDefaults.standard.data(forKey: modelKey),
              let model = try? JSONDecoder().decode(LoginModel.self, from: data)
        else {
            self.model = LoginModel(username: "", password: "'", isLogin: false)
            return
        }
        
        self.model = model
    }
    
    func saveUser(username:String, password:String) {
        //로그인 성공 처리
        let model = LoginModel(username: username, password: password, isLogin: true)
        
        //JSON
        if let data = try? JSONEncoder().encode(model), let dataString = String(data: data, encoding: .utf8) {
            UserDefaults.standard.set(data, forKey: modelKey)
            print("저장 완료 : \(dataString)")
            
            self.model = model
        }
    }
}
