//
//  RegisterViewModel.swift
//  To Do List
//
//  Created by shivakumar chirra on 30/07/25.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
class RegisterViewModel: ObservableObject {
    @Published var name : String = ""
    @Published var email : String = ""
    @Published var password : String = ""
   
    
    init(){}
    func register (){
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            guard let userId = result?.user.uid else{
                return
            }
            self.insertUserrecord(id: userId)
        }
    }
    private func insertUserrecord(id: String){
        
        let newUser = User(id: id, name: name, joined:Date().timeIntervalSince1970, email: email)
        let db = Firestore.firestore()
        db.collection("Users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
    private func validate() -> Bool {
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            
            return false
        }
        guard email.contains( "@" )  && email.contains( "." ) else {
            return false
        }
        guard password.count >= 6 else {
            return false
        }
        return true
    }
}
