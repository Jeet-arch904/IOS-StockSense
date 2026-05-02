//
//  MainHomeView.swift
//  Invst
//
//  Created by Jett Ehlert on 4/24/26.
//

import SwiftUI

struct MainHomeView: View {
    @Binding var goToHome: Bool
    var body: some View {
        ZStack{
            //Color Background
            Color.black.opacity(0.91)
            .ignoresSafeArea()
            
            RoundedRectangle(cornerRadius:60)
                .fill(.white.opacity(0.5))
                .frame(width:100, height:50)
                .offset(x:-100, y: -290)

            
            VStack{
                RoundedRectangle(cornerRadius: 70)
                    .fill(.black)
                    .frame(width: 425, height: 800)
                    .offset(y: +100)
                
            }
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.white.gradient)
            
        }
        //.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainHomeView(goToHome: .constant(false))
}
