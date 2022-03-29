//
//  ThirdView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var session: Session

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to first") {
                    session.screenID = .first
                }
                .foregroundColor(.white)
                Spacer()
            }
            Spacer()
        }
        .background(Color.yellow)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView()
            .environmentObject(Session())
    }
}
