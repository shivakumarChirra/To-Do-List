//
//  ToDoButtonView.swift
//  To Do List
//
//  Created by shivakumar chirra on 30/07/25.
//

import SwiftUI

struct ToDoButtonView: View {
    let ButtonTitle : String
    let backgroundColor : Color
    let action: () -> Void
    var body: some View {
        Button{
            // Attempt to logoin
            action()
        }label:{
            ZStack{
                RoundedRectangle(cornerRadius: 15)
                    .foregroundStyle(backgroundColor)
                
                Text(ButtonTitle)
                   
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.white)
            }
        }
    }}

#Preview {
    ToDoButtonView(ButtonTitle: "ButtonTitle", backgroundColor: .gray)
    {
        //
    }
    }

