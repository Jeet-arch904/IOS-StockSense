//
//  SettingSidebar.swift
//  Invst
//
//  Created by Jett Ehlert on 5/3/26.
//

import SwiftUI

struct SettingsButton: View {
    @Binding var showSettings: Bool
    var body: some View {
        Button {
            withAnimation(.spring()) {
                showSettings.toggle()
            }
        } label: {
                Image("settings")
                    .resizable()
                    .renderingMode(.template)
                    .scaledToFit()
                .frame(width: 70, height: 70)
        }
    }
}

//
struct SettingsSidebar: View {
    @Binding var showSettings: Bool
    
    var body: some View {
        ZStack {
            // Dim background
            Color.black.opacity(0.4)
                .ignoresSafeArea()
            
            
            //Panel
            HStack {
                Spacer()
                VStack(alignment: .leading, spacing: 20) {
                    Text("Settings")
                        .font(.title)
                        .foregroundStyle(.white)
                        .padding(.top, 60)
                    
                    Divider().background(.white.opacity(0.3))
                    
                    Text("Option 1")
                        .foregroundStyle(.white)
                    Text("Option 2")
                        .foregroundStyle(.white)
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
                .frame(width: 280)
                .background(.ultraThinMaterial)
                .ignoresSafeArea()
            }
        }
    }
}
