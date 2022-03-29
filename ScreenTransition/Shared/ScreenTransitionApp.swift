//
//  ScreenTransitionApp.swift
//  Shared
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

@main
struct ScreenTransitionApp: App {
    @ObservedObject var session = Session()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(session)
        }
    }
}
