//
//  LoginView.swift
//  To Do List
//
//  Created by shivakumar chirra on 30/07/25.
//

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewViewModel()
    var body: some View {
        NavigationView {
            VStack {
// Header  here i called a another view so its in the Header View inside the view
                HeaderView(title: "To DO List", subTitle: "Get Things Done title", angle: 15, backgroundColor: .pink)
                
                
//LoginScreen
                
                Form{
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
                        //Attempt to log in
                    }
                        
                    }.padding()
                    
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
