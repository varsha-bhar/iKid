//
//  StyledCard.swift
//  iKid
//
//  Created by Varsha Bharath on 4/28/25.
//


import SwiftUI

struct StyledCard: View {
    let text: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.white)
                .frame(width: 300, height: 300)
                .shadow(radius: 10)
            
            Text(text)
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    ContentView()
}
