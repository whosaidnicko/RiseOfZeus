//
//  ButtonBackView.swift
//  RiseOfZeus
//
//  Created by Nicolae Chivriga on 19/12/2024.
//

import SwiftUI


struct ButtonBackView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Image("back")
                .resizable()
                .frame(width: 36, height: 28)
        }

       
    }
}
