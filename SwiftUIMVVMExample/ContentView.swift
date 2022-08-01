//
//  ContentView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI

struct ContentView: View {
    @StateObject var loginViewModel = LoginViewModel()
    
    var body: some View {
        VStack{
            LoginView().environmentObject(loginViewModel)
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
