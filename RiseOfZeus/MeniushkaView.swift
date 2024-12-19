//
//  MeniushkaView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI

struct MeniushkaView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("ahTiKrisa")
                    .resizable()
                    .scaledToFit()
                
                titleBtn(text: "PLAY", view: AnyView(ZeusGameView()))
                
                titleBtn(text: "RULES", view: AnyView(RulesView()))
                
                titleBtn(text: "SETTINGS", view: AnyView(SettingsView()))
            }
            .padding()
        }
        .navigationBarBackButtonHidden()
    }
    
    
    func titleBtn(text: String, view: AnyView) -> some View {
        NavigationLink {
            AnyView(view)
        } label: {
            Image("containerMne")
                .resizable()
                .scaledToFit()
                .overlay {
                    Text(text)
                        .font(.system(size: 30, weight: .thin, design: .serif))
                        .foregroundStyle(.white)
                }
        }

       
    }
}
