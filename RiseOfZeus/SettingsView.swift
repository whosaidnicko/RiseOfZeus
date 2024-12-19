//
//  SettingsView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI
import StoreKit



struct SettingsView: View {
    @Environment(\.requestReview) var requestReview
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Button {
                    requestReview()
                } label: {
                    Image("containerMne")
                        .resizable()
                        .scaledToFit()
                        .overlay {
                            Text("STARS")
                                .font(.system(size: 30, weight: .thin, design: .serif))
                                .foregroundStyle(.white)
                        }
                }

               
            }
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: ButtonBackView())
    }
}
