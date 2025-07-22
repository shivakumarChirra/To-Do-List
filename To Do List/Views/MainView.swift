//
//  ContentView.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI

struct MainView: View {
    @State var email : String = ""
    @State var password : String = ""
    var body: some View {
        ZStack{
            VStack {
                // Header
                HeaderView()
                
                
                //LoginScreen
                NavigationStack{
                    Form{
                        TextField("Enter E-Mail", text: $email)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        SecureField("Password", text: $password)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        Button(action:{
                            
                        }, label:{
                            ZStack{
                                RoundedRectangle(cornerRadius: 15)
                                
                                Text("Log In")
                                    .background(Color.blue)
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.white)
                            }
                                
                        })

                    }
                }
                
                
                //create and register
                
                NavigationStack{
                    VStack{
                        NavigationLink(destination: RegisterView()){
                            Text("Create an account")
                                .font(.title)
                                .foregroundStyle(Color.green)
                        }
                    }
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    MainView()
}
