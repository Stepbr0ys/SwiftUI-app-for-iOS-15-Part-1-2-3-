//
//  BeginingApp.swift
//  Shared
//
//  Created by Борис Ларионов on 13.01.2022.
//

import SwiftUI

@main
struct BeginingApp: App {
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}
