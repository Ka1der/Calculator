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
    var backgroundColor: Color
    var textColor: Color
    
    init(number: String, action: @escaping (String) -> Void, backgroundColor: Color = .orange, textColor: Color = .white) {
        self.number = number
        self.action = action
        self.backgroundColor = backgroundColor
        self.textColor = textColor
    }
    
    var body: some View {
        Button {action(number)
        } label: {
            Rectangle()
                .frame(width: 80, height: 80)
                .foregroundStyle(backgroundColor)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.black, lineWidth: 2)
                )
                .overlay(
                    Text(number)
                        .foregroundStyle(textColor)
                        .font(.system(size: 40))
                )
        }
        .scaleEffect(0.95)
        .animation(.easeInOut(duration: 0.1), value: true)
    }
}
