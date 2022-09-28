//
//  WordleCloneApp.swift
//  WordleClone
//
//  Created by Анна Лошакова on 28.09.2022.
//

import SwiftUI

@main
struct WordleCloneApp: App {
    
    @StateObject var dm = WordleDataModel()
    
    var body: some Scene {
        WindowGroup {
            GameView()
                .environmentObject(dm)
        }
    }
}
