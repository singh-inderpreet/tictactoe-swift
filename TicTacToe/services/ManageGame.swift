//
//  ManageGame.swift
//  TicTacToe
//
//  Created by inderpreet singh on 30/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import Foundation

struct Box: Identifiable {
    var id: Int
    
    var offsetY: Double
    var isPlayed: Bool
    var showCircle: Bool
    var playedBy: String
    
    init(id: Int, offsetY: Double, isPlayed: Bool, showCircle: Bool, playedBy: String) {
        self.id = id
        self.offsetY = offsetY
        self.isPlayed = isPlayed
        self.showCircle = showCircle
        self.playedBy = playedBy
    }
}

class ManageGame: ObservableObject {
    @Published var boxes: [Box]
    
    init() {
        self.boxes = [
            Box(id: 1, offsetY: 0.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 2, offsetY: 0.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 3, offsetY: 0.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 4, offsetY: 100.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 5, offsetY: 100.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 6, offsetY: 100.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 7, offsetY: 200.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 8, offsetY: 200.0, isPlayed: false, showCircle: false, playedBy: ""),
            Box(id: 9, offsetY: 200.0, isPlayed: false, showCircle: false, playedBy: "")
        ]
    }
}
