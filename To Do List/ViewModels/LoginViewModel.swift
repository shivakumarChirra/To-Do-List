//
//  LoginViewViewModel.swift
//  To Do List
//
//  Created by shivakumar chirra on 30/07/25.
//

import Foundation
import FirebaseAuth


class LoginViewModel: ObservableObject {
    @Published var email : String = ""
    @Published var password : String = ""
    @Published var errorMessage = ""
    
    init() {
        
    }
// here the loign have hold the some of the prototype functionalities
    func login(){
        guard validate() else {
            return
        }
// try log in
        
        Auth.auth().signIn(withEmail: email, password: password)
        
    }
  private  func validate() -> Bool{
      errorMessage = ""
      guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
            !password.trimmingCharacters(in: .whitespaces).isEmpty else {
          errorMessage = "Please Fill All The Details."
          return false
      }
      
// for the e mail perfect verification
      
      guard email.contains("@") && email.contains(".") else {
          errorMessage = "Please Enter Valid Email with @ and  Period(.)."
          return false
      }
      
      return true
      
      
     // print("Called")
    }
}



