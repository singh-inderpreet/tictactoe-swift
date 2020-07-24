//
//  Game.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct Game: View {
    var body: some View {
        VStack {
            TitleView()
                .frame(maxWidth: .infinity, maxHeight: 60)
                .offset(x: 0, y: 0)
            ContentView()
                .frame(maxWidth: 300, maxHeight: 300)
            FooterView()
                .frame(maxWidth: .infinity, maxHeight: 60)
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
