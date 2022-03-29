//
//  FirstView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct FirstView: View {
    @ObservedObject var viewModel: FirstViewModel

    init(viewModel: FirstViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to second") {
                    self.viewModel.go()
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
        FirstView(viewModel: FirstViewModel())
            .environmentObject(Session())
    }
}
