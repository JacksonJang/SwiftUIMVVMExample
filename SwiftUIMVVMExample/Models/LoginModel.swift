//
//  LoginModel.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/08/02.
//

import Foundation

struct LoginModel: Codable {
    let username: String
    let password: String
    var isLogin: Bool = false
}
