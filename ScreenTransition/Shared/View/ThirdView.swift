//
//  ThirdView.swift
//  ScreenTransition
//
//  Created by oec on 2022/03/29.
//

import SwiftUI

struct ThirdView: View {
    @ObservedObject var viewModel: ThirdViewModel

    init(viewModel: ThirdViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Button("Go to first") {
                    self.viewModel.go()
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
        ThirdView(viewModel: ThirdViewModel())
    }
}
