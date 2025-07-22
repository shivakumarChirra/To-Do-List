//
//  HeaderView.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(Color.pink)
                .rotationEffect(Angle(degrees: 10))
                
            VStack{
                Text("To Do List App")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                Text("Go ON ")
                    .foregroundStyle(.white)
                    .font(.title)
                
                
            }
            .padding(.top, 30)
        }
        .frame(width: UIScreen.main.bounds .width * 3, height: 300)
        .offset(y: -100)
    }
}

#Preview {
    HeaderView()
}
