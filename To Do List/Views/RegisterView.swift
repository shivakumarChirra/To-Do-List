//
//  RegisterView.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewModel()
    var body: some View {
        VStack {
            HeaderView(title: "Register", subTitle: "Start organize Ypurs Do's", angle: -15, backgroundColor: .orange)
            
            Form{
                TextField("Ful Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                TextField("Enter E-Mail", text: $viewModel.email)
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled(true)
                ToDoButtonView(
                    ButtonTitle: "Creat A Account ",
                    backgroundColor: .blue
                
                ){
                    //Attempt to log in
                }
                .padding()
                
            }
            
            .offset(y: -30)
            Spacer()
        }
    }
}

#Preview {
    RegisterView()
}
