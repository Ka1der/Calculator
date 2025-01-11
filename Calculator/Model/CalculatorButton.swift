//
//  CalculatorButton.swift
//  CalculatorButton
//
//  Created by Kaider on 06.01.2025.
//

import SwiftUI

struct CalculatorButton: View {
    
    var number: String
    var action: (String) -> Void
    
    var body: some View {
        Rectangle()
            .frame(width: 80, height: 80)
            .foregroundStyle(.orange)
            .cornerRadius(30)
            .overlay(
                Text(number)
            .foregroundStyle(.white)
            .font(.system(size: 40))
        )
            .onTapGesture {
                action(number)
            }
    }
}
