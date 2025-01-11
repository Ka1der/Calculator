//
//  ContentView.swift
//  Calculator
//
//  Created by Kaider on 06.01.2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var viewModel = CalculatorViewModel()

    var body: some View {
        VStack(spacing: 10) {
            HStack {
                CustomTextField(text: $viewModel.displayText)
            }
            Spacer()
            HStack(spacing: 10) {
                CalculatorButton(number: "", action: viewModel.buttonsPress)
                CalculatorButton(number: "", action: viewModel.buttonsPress)
                CalculatorButton(number: "", action: viewModel.buttonsPress)
                CalculatorButton(number: "С", action: viewModel.buttonsPress)
                // TO-DO: прописать все кнопки, перекрасить
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "1", action: viewModel.buttonsPress)
                CalculatorButton(number: "2", action: viewModel.buttonsPress)
                CalculatorButton(number: "3", action: viewModel.buttonsPress)
                CalculatorButton(number: "X", action: viewModel.buttonsPress)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "4", action: viewModel.buttonsPress)
                CalculatorButton(number: "5", action: viewModel.buttonsPress)
                CalculatorButton(number: "6", action: viewModel.buttonsPress)
                CalculatorButton(number: "/", action: viewModel.buttonsPress)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "7", action: viewModel.buttonsPress)
                CalculatorButton(number: "8", action: viewModel.buttonsPress)
                CalculatorButton(number: "9", action: viewModel.buttonsPress)
                CalculatorButton(number: "+", action: viewModel.buttonsPress)
            }
            HStack(spacing: 10) {
                CalculatorButton(number: "0", action: viewModel.buttonsPress)
                CalculatorButton(number: ".", action: viewModel.buttonsPress)
                CalculatorButton(number: "=", action: viewModel.buttonsPress)
                CalculatorButton(number: "-", action: viewModel.buttonsPress)
            }
        }
        .padding()
    }
    
    
    
}

#Preview {
    ContentView()
}
