//
//  To_Do_ListApp.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI
import FirebaseCore
@main
struct To_Do_ListApp: App {
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
