//
//  RulesView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI

struct RulesView: View {
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
        Image("rules")
                .overlay {
                    Text("Play as Rise of Zeus, a heroic hamster on a quest through Ancient Greece! Navigate platforms, avoid obstacles, and collect treasures as you advance through each level. Use your jumping skills to overcome challenges and reach the goal. Complete all levels to prove your might and claim victory!")
                        .font(.system(size: 20, weight: .black, design: .default))
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                        .foregroundStyle(.white)
                }
                .navigationBarBackButtonHidden()
                .navigationBarItems(leading: ButtonBackView())
            }
    }
}
