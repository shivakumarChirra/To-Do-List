//
//  LoginView.swift
//  To Do List
//
//  Created by shivakumar chirra on 30/07/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    var body: some View {
        NavigationView {
            VStack {
// Header  here i called a another view so its in the Header View inside the view
                HeaderView(title: "To DO List", subTitle: "Get Things Done title", angle: 15, backgroundColor: .pink)
                
                
//LoginScreen
                                }
                
                Form{
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundStyle(.red)

                    TextField("Enter E-Mail", text: $viewModel.email)
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                        .autocorrectionDisabled(true)
                    
// ToDoButtonView called Here with Passing attributes title action and bc color
                    ToDoButtonView(
                        ButtonTitle: "Log In",
                        backgroundColor: .blue
                    
                    ){
// here the viewModel is come form the class of viewmodellogin model view and its a function inside the class 
                        viewModel.login()
                        //Attempt to log in
                    }
                        
                    }
                        
                    
                }
                
                
                
//create and register
                
                
                VStack{
                    Text("New Around Here?")
                    NavigationLink(destination: RegisterView()){
                        Text("Create an account")
                            .font(.title)
                            .foregroundStyle(Color.green)
                    }
                }
            }
        }
        
    }


#Preview {
    LoginView()
}
