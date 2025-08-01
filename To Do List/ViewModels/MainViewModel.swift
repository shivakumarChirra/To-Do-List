//
//  MainViewModel.swift
//  To Do List
//
//  Created by shivakumar chirra on 01/08/25.
//
import FirebaseAuth
import Foundation


class MainViewModel : ObservableObject {
    @Published var currentUserId : String = ""
    private var handler: AuthStateDidChangeListenerHandle?
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    public var isSignedIn : Bool {
        return Auth.auth().currentUser != nil
    }
}
