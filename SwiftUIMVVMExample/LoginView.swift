//
//  LoginView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/08/01.
//

import SwiftUI

struct LoginView: View {
    @State var username = ""
    @State var password = ""
    
    let borderColor = Color(red: 107.0/255.0, green: 164.0/255.0, blue: 252.0/255.0)
    
    var body: some View {
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
                ButtonView(username: $username, text: "Login").frame(height: 50)
            }
            .padding(.top, 10)
            
        }.padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
