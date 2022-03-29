//
//  Session.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import Foundation

class Session: ObservableObject {
    @Published var screenID: ScreenID

    init(screenID: ScreenID = .first) {
        self.screenID = screenID
    }
}
