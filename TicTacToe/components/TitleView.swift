//
//  TitleView.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        HStack {
            Text("TicTacToe")
        }
        .background(Color.blue)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
