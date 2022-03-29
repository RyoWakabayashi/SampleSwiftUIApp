//
//  SecondView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct SecondView: View {
    @ObservedObject var viewModel: SecondViewModel

    init(viewModel: SecondViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to third") {
                    self.viewModel.go()
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
        SecondView(viewModel: SecondViewModel())
    }
}
