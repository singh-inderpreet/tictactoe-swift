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
    
    @State var boxes: [[String: Any]] = [
        [ "offsetY": 0.0, "showCircle": false ],
        [ "offsetY": 0.0, "showCircle": false ],
        [ "offsetY": 0.0, "showCircle": false ],
        [ "offsetY": 100.0, "showCircle": false ],
        [ "offsetY": 100.0, "showCircle": false ],
        [ "offsetY": 100.0, "showCircle": false ],
        [ "offsetY": 200.0, "showCircle": false ],
        [ "offsetY": 200.0, "showCircle": false ],
        [ "offsetY": 200.0, "showCircle": false ]
    ]
    
    
    var body: some View {
        VStack {
            TitleView()
                .frame(maxWidth: .infinity, maxHeight: 60)
                .offset(x: 0, y: 0)
            
            ContentView(onContentClicked: {index in
                self.updatePlayerState.toggle();
            }, showCircle: false, boxes: $boxes).frame(maxWidth: 300, maxHeight: 300)
            
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
