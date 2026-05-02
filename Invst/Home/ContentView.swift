//
//  ContentView.swift
//  Invst
//
//  Created by Jett Ehlert on 4/9/26.
//

import SwiftUI

struct ContentView: View {
    @State private var goToHome = false
    var body: some View {
            ZStack{
                
                //Switch that tracks when the button is pressed and goes to the other screen
                if goToHome {
                    MainHomeView(goToHome: $goToHome)
                        .transition(.opacity)
                } else {
                    LaunchView(goToHome: $goToHome)
                        .transition(.opacity)
                }
                
            }
            //Transition affect changing in between screens
            .animation(.easeInOut(duration: 0.6), value: goToHome)
        }
    }

//Struct that holds the beginning screen and changes the goToHome to true if the buttom was press on this screen. GoToHome becoming true will switch the boolean so the contentview can pass the if statment, changing into the MianHomeView struct (other screen)
struct LaunchView: View {
    @Binding var goToHome: Bool
        var body: some View {
            ZStack {
                
                //Overlay shadow for the background
                LinearGradient(
                    colors: [.black.opacity(0.8), .white.opacity(0.4)],
                    startPoint: .top,
                    endPoint: .bottom
                    
                )
                .ignoresSafeArea()
                
                Button {
                    goToHome = true
                } label: {
                    RoundedRectangle(cornerRadius: 500)
                        .fill(.black.opacity(0.3))
                        .frame(width: 480, height: 600)
                }
                
                VStack {
                    //Logo and title for the homescreen
                    Image("chart")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.tint)
                        .offset(y: +30)
                    Text("StockSense")
                        .font(.system(.largeTitle, weight: .semibold))
                        .foregroundStyle(.white.gradient)
                        .offset(y: +30)
                    
                    RoundedRectangle(cornerRadius: 300)
                        .fill(.black.opacity(0.1))
                        .frame(width:200, height:50)
                        .offset(y: +270)
                }
                //External link for the offical website
                Text("Visit Offical Website")
                    .font(.system(size: 13, weight: .bold))
                    .offset(y: +357)
                    .opacity(0.8)
                
                    .padding()
                }
            }
        }

#Preview {
    ContentView()
}
