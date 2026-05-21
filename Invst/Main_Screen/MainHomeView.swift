//
//  MainHomeView.swift
//  Invst
//
//  Created by Jett Ehlert on 4/24/26.
//

import SwiftUI

struct MainHomeView: View {
    @Binding var goToHome: Bool
    @State private var showSettings = false
    @State private var showSearch = false
    var body: some View {
        ZStack{
            //Color Background
            Color.black.opacity(0.91)
            .ignoresSafeArea()

            VStack{
                //Main surface interface
                RoundedRectangle(cornerRadius: 70)
                    .fill(.black)
                    .frame(width: 425, height: 800)
                    .offset(y: +100)
            }
            
            //Navigation bar
            RoundedRectangle(cornerRadius: 60)
                .fill(.white.opacity(0.05))
                .overlay(
                    RoundedRectangle(cornerRadius: 60)
                        .stroke(.white.opacity(0.3), lineWidth: 1)
                )
                .frame(width: 345, height: 50)
                .offset(y: -255)
            
        //Tab Buttons
            
            //Search
            SearchButton(showSearch: $showSearch)
                .offset(x: +130, y: -20)
            
            if showSearch{
                Search(showSearch: $showSearch)
            }
            
            //Settings
            SettingsButton(showSettings: $showSettings)
                .offset(x: +155, y: -400)
                .foregroundStyle(.white.opacity(0.6))
            
            if showSettings {
                SettingsSidebar(showSettings: $showSettings)
            }
            
            
        }
    }
}

#Preview {
    MainHomeView(goToHome: .constant(false))
}
