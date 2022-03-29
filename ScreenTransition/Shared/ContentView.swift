//
//  ContentView.swift
//  Shared
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var session: Session

    var body: some View {
        switch session.screenID {
        case .first:
            FirstView()
                .environmentObject(session)
        case .second:
            SecondView()
                .environmentObject(session)
        case .third:
            ThirdView()
                .environmentObject(session)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environmentObject(Session())
            ContentView()
                .environmentObject(Session(screenID: .second))
            ContentView()
                .environmentObject(Session(screenID: .third))
        }
    }
}
