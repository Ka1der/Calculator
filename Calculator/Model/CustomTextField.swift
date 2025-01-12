//
//  CustomTextField.swift
//  Calculator
//
//  Created by Kaider on 06.01.2025.
//

import SwiftUI

struct CustomTextField: View {
    
    @Binding var text: String
    
    var body: some View {
        TextField("0", text: $text)
            .padding()
            .font(.system(size: 35))
            .background()
            .cornerRadius(10)
    }
}

