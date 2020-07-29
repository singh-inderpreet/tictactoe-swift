//
//  Game.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct Game: View {
    @State var updatePlayerState: Bool = true
    @State var startTurnShowCircle = false // Player 1 == X, Player 2 == 0
    
    @ObservedObject var manageGame = ManageGame()
    
    var body: some View {
        VStack {
            TitleView()
                .frame(maxWidth: .infinity, maxHeight: 60)
                .offset(x: 0, y: 0)
            
            ContentView(onContentClicked: {index in
                self.updatePlayerState.toggle();
            }, showCircle: false,
               startTurnShowCircle: $startTurnShowCircle,
               boxes: .init(get: { self.manageGame.boxes }, set: { self.manageGame.boxes = $0})
            ).frame(maxWidth: 300, maxHeight: 300)
            
            FooterView(updatePlayerState: $updatePlayerState)
                .frame(maxWidth: .infinity, maxHeight: 60)
        }
    }
}

struct Game_Previews: PreviewProvider {
    static var previews: some View {
        Game()
    }
}
