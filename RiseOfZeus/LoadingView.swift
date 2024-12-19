//
//  LoadingView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI


struct LoadingView: View {
    @State var timer: Timer?
    @State var goMe: Bool = false
    @State var rotatetiGoing: Double = 0
    var body: some View {
        ZStack {
            NavigationLink("", destination: MeniushkaView(), isActive: $goMe)
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Image("ahTiKrisa")
                    
                Circle()
                    .trim(from: 0, to: 0.9)
                    .stroke(lineWidth: 20)
                    .frame(width: 56, height: 56)
                    .foregroundStyle(.white)
                    .rotationEffect(.degrees(rotatetiGoing))
                
            }
            .onAppear() {
                timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true) { _ in
                    withAnimation {
                        rotatetiGoing += 1
                    }
                }
                
                DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                    goMe = true 
                }
            }
        }
    }
}
