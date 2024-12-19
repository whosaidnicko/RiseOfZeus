//
//  ZeusGameView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI


struct ZeusGameView: View {
    
    @State var goMe: Bool = false
    @State var rotatetiGoing: Double = 0
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            Circle()
                .trim(from: 0, to: 0.9)
                .stroke(lineWidth: 20)
                .frame(width: 56, height: 56)
                .foregroundStyle(.white)
                .rotationEffect(.degrees(rotatetiGoing))
                .opacity(goMe ? 0 : 1)
            
            WKWebViewRepresentable(url: URL(string: "https://images.nationalgeographic.com/wpf/media-content/richmedia/2/zeus-the-mighty-beta4/")!, onLoadCompletion: {
                withAnimation {
                    goMe = true
                } completion: {
                    let impactMed = UIImpactFeedbackGenerator(style: .medium)
                    impactMed.impactOccurred()
                }

            })
//            .opacity(!goMe ? 0 : 1)
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: ButtonBackView())
        .onAppear() {
            withAnimation(Animation.linear(duration: 60)) {
                rotatetiGoing = 6000
            }
        }
    }
}

