//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by Kaider on 11.01.2025.
//

import SwiftUI

enum Operation: String {
    case plus = "+"
    case minus = "-"
    case multiply = "X"
    case divide = "/"
    case delete = "<"
}

final class CalculatorViewModel: ObservableObject {
    
    @Published var displayText: String = "0"
    
    func buttonsPress(_ value: String) {
        switch value {
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0":
            if displayText == "0" {
                displayText = value
            } else {
                displayText += value
            }
        case "C":
            displayText = "0"
        case "+", "-", "/", "X":
            displayText += value
        case "=":
            calculateResult()
        case "<":
            if !displayText.isEmpty && displayText != "0" {
                displayText.removeLast()
                if displayText.isEmpty {
                    displayText = "0"
                }
            }
            
        default:
            break
        }
    }
    
    func calculateResult() {
        var currentNumber: String = ""
        var numbers: [Double] = []
        var operations: [Operation] = []
        
        for character in displayText {
            if let _ = Double(String(character)) {
                currentNumber += String(character)
            } else if "+-/X".contains(character) {
                if let number = Double(currentNumber) {
                    numbers.append(number)
                    print("\(numbers)")
                    currentNumber = ""
                }
                if let operation = Operation(rawValue: String(character)) {
                    operations.append(operation)
                    print("\(operations)")
                }
            }
        }
        if let number = Double(currentNumber) {
            numbers.append(number)
            print("\(numbers)")
        }
        guard numbers.count == operations.count + 1 else {
            return
        }
        
        var result = numbers[0]
        
        for i in 0..<operations.count {
            let nextNumber = numbers[i + 1]
            
            switch operations[i] {
            case .plus:
                result += nextNumber
            case .minus:
                result -= nextNumber
            case .multiply:
                result *= nextNumber
            case .divide:
                guard nextNumber != 0 else {
                    return
                }
                result /= nextNumber
            case .delete:
                break
            }
        }
        displayText = formatResult(result)
    }
    private func formatResult(_ number: Double) -> String {
        if number.truncatingRemainder(dividingBy: 1) == 0 {
            return String(Int(number))
        }
        return String(format: "%.2f", number)
    }
}
