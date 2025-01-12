//
//  ContentView.swift
//  Calculator
//
//  Created by Kaider on 06.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var calculatorViewModel = CalculatorViewModel()

    var body: some View {
        VStack(spacing: 10) {
            VStack {
                CustomTextField(text: $calculatorViewModel.displayText)
                ScrollView {
                    Text(calculatorViewModel.historyViewModel.history)
                        .font(.system(size: 15))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding()
                }
            }
            Spacer()
            HStack(spacing: 10) {
                CalculatorButton(number: "", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
                CalculatorButton(number: "", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
                CalculatorButton(number: "<", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
                CalculatorButton(number: "+", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "7", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "8", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "9", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "-", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "4", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "5", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "6", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "X", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "1", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "2", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "3", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: "/", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "0", action: calculatorViewModel.buttonsPress)
                CalculatorButton(number: ".", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
                CalculatorButton(number: "C", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
                CalculatorButton(number: "=", action: calculatorViewModel.buttonsPress, backgroundColor: .gray.opacity(0.5), textColor: .black)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
