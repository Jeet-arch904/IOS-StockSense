//
//  ContentView.swift
//  Invst
//
//  Created by Jett Ehlert on 4/9/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            //Shadow for the background
            LinearGradient(
                colors: [.black.opacity(0.8), .white.opacity(0.4)],
                startPoint: .top,
                endPoint: .bottom
               
            )
            .ignoresSafeArea()
            
            //Title and logo
            RoundedRectangle(cornerRadius: 500)
                .fill(.black.opacity(0.3))
                .frame(width: 480, height: 600)
            
            VStack {
                
                Image("chart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.tint)
                Text("StockSense")
                    .font(.system(.largeTitle, weight: .semibold))
                    .foregroundStyle(.white.gradient)
                
            
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
