//
//  ContentView.swift
//  Calculator
//
//  Created by Kaider on 06.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var displayText: String = "0"
    
    func buttonsPress(_ value: String) {
        if value == "C" {
            displayText = "0"
            return
        }
        if displayText == "0" {
            displayText = value
        } else {
            displayText += value
        }
    }
        
        var body: some View {
            VStack(spacing: 10) {
                HStack {
                    CustomTextField(text: $displayText)
                }
                Spacer()
                HStack(spacing: 10) {
                    CalculatorButton(number: "1", action: buttonsPress)
                    CalculatorButton(number: "2", action: buttonsPress)
                    CalculatorButton(number: "3", action: buttonsPress)
                    CalculatorButton(number: "X", action: buttonsPress)
                }
                HStack(spacing: 10) {
                    CalculatorButton(number: "4", action: buttonsPress)
                    CalculatorButton(number: "5", action: buttonsPress)
                    CalculatorButton(number: "6", action: buttonsPress)
                    CalculatorButton(number: "/", action: buttonsPress)
                }
                HStack(spacing: 10) {
                    CalculatorButton(number: "7", action: buttonsPress)
                    CalculatorButton(number: "8", action: buttonsPress)
                    CalculatorButton(number: "9", action: buttonsPress)
                    CalculatorButton(number: "+", action: buttonsPress)
                }
                HStack(spacing: 10) {
                    CalculatorButton(number: "0", action: buttonsPress)
                    CalculatorButton(number: "=", action: buttonsPress)
                    CalculatorButton(number: ".", action: buttonsPress)
                    CalculatorButton(number: "C", action: buttonsPress)
                }
            }
            .padding()
        }
    }

#Preview {
    ContentView()
}
