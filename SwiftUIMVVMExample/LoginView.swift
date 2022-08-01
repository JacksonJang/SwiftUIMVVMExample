//
//  LoginView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/08/01.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var loginViewModel : LoginViewModel
    
    @State var isLogin = false
    @State var username = ""
    @State var password = ""
    
    let borderColor = Color(red: 107.0/255.0, green: 164.0/255.0, blue: 252.0/255.0)
    
    var body: some View {
        if loginViewModel.model.isLogin {
            //자동 로그인 상태
            
        } else {
            //비로그인 상태
            VStack{
                //유저 이름
                TextField("Username", text:self.$username)
                    .autocapitalization(.none)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(borderColor, lineWidth: 1)
                    )
                
                //비밀번호
                SecureField("Password", text: self.$password)
                    .autocapitalization(.none)
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 10)
                    .stroke(borderColor,lineWidth: 1))
                    .padding(.top, 5)
                    
                //로그인 버튼
                HStack {
                    ButtonView(text: "Login", completion: {
                        loginViewModel.saveUser(username: username, password: password)
                    })
                    .frame(height: 50)
                    .environmentObject(loginViewModel)
                }
                .padding(.top, 10)
            }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(LoginViewModel())
    }
}
