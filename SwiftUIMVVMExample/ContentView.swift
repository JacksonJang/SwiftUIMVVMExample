//
//  ContentView.swift
//  SwiftUIMVVMExample
//
//  Created by 장효원 on 2022/07/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack {
                Spacer(minLength: 10)
                LoginView().frame(height: 50)
                Spacer(minLength: 10)
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
