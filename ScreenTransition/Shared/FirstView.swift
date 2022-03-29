//
//  FirstView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var session: Session

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to second") {
                    session.screenID = .second
                }
                .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
        .background(Color.blue)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
            .environmentObject(Session())
    }
}
