//
//  HeaderView.swift
//  To Do List
//
//  Created by shivakumar chirra on 22/07/25.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subTitle: String
    let angle : Double
    let backgroundColor :Color
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
                
            VStack{
                Text(title)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                Text(subTitle)
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
    HeaderView(title: "title", subTitle: "sub Title", angle: 15, backgroundColor: .blue)
}
