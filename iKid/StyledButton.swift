//
//  StyledButton.swift
//  iKid
//
//  Created by Varsha Bharath on 4/28/25.
//

import SwiftUI

struct StyledButton: View {
    let title: String

    var body: some View {
        Text(title)
            .font(.headline)
            .frame(width: 200, height: 50)
            .background(Color(red: 195/255, green: 190/255, blue: 247/255))
            .foregroundColor(.white)
            .cornerRadius(12)
            .shadow(radius: 5)
    }
}
