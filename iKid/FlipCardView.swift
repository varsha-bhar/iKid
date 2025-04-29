//
//  FlipCardView.swift
//  iKid
//
//  Created by Varsha Bharath on 4/28/25.
//


import SwiftUI

struct FlipCardView: View {
    var frontText: String
    var backText: String
    @Binding var isFlipped: Bool

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 300, height: 300)
                .shadow(radius: 10)
                .overlay(
                    Group {
                        if isFlipped {
                            Text(backText)
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding()
                                .multilineTextAlignment(.center)
                        } else {
                            Text(frontText)
                                .font(.title2)
                                .foregroundColor(.black)
                                .padding()
                                .multilineTextAlignment(.center)
                        }
                    }
                )
                .rotation3DEffect(
                    .degrees(isFlipped ? 180 : 0),
                    axis: (x: 0, y: 1, z: 0)
                )
                .animation(.easeInOut, value: isFlipped)
        }
    }
}
