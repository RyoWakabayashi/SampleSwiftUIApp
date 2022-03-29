//
//  SecondView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct SecondView: View {
    @EnvironmentObject var session: Session

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to third") {
                    session.screenID = .third
                }
                .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
        .background(Color.red)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
            .environmentObject(Session())
    }
}
