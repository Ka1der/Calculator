//
//  HistoryViewModel.swift
//  Calculator
//
//  Created by Kaider on 11.01.2025.
//

import SwiftUI

final class HistoryViewModel: ObservableObject {
    
    @Published var history: String = ""
    
    func addToHistory(expression: String, result: String) {
        history += "\(expression) = \(result)\n"
    }
}
