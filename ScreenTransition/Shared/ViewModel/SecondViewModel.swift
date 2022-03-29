//
//  SecondViewModel.swift
//  ScreenTransition (iOS)
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

public class SecondViewModel: ObservableObject {
    @Published var session: Session

    init(session: Session = Session()) {
        self.session = session
    }

    func go() {
        self.session.screenID = .third
    }
}
