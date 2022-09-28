//
//  Color+Extension.swift
//  WordleClone
//
//  Created by Анна Лошакова on 28.09.2022.
//

import SwiftUI

extension Color {
    
    static var wrong: Color {
        Color(UIColor(named: "wrong") ?? .darkGray)
    }
    
    static var unused: Color {
        Color(UIColor(named: "unused") ?? .lightGray)
    }
    
    static var misplaced: Color {
        Color(UIColor(named: "misplaced") ?? .systemYellow)
    }
    
    static var correct: Color {
        Color(UIColor(named: "correct") ?? .systemGreen)
    }
    
    static var systemBackground: Color {
        Color(.systemBackground)
    }
}
