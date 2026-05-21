//
//  SearchButton.swift
//  Invst
//
//  Created by Jett Ehlert on 5/21/26.
//

import SwiftUI

struct SearchButton: View {
    @Binding var showSearch: Bool
    var body: some View {
        Button {
            withAnimation(.spring()) {
                showSearch.toggle()
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
struct Search: View {
    @Binding var showSearch: Bool
    
    var body: some View {
        ZStack {
            
        }
    }
}
