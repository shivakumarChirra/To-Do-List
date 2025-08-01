//
//  ContentView.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI

struct MainView: View {
    @StateObject  var viewModel =  MainViewModel()
   
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in or other view user the register
            ToDoListView()
        }else {
            LoginView()
        }
        }
    }


#Preview {
    MainView()
}
