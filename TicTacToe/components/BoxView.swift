//
//  BoxView.swift
//  TicTacToe
//
//  Created by inderpreet singh on 23/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct BoxView: View {
    @Binding var showCircle: Bool
    @Binding var isPlayed: Bool
    @Binding var startTurnShowCircle: Bool
    @Binding var playedBy: String
    
    let onClicked: () -> Void
    
    var body: some View {
        Button(action: {
            if !self.isPlayed {
                self.isPlayed.toggle()
                self.showCircle = self.startTurnShowCircle;
                if self.showCircle {
                    self.playedBy = "Player 2"
                } else {
                    self.playedBy = "Player 1"
                }
                self.startTurnShowCircle.toggle()
            }
            self.onClicked()
        }) {
            if isPlayed {
                if showCircle {
                    Circle()
                        .frame(maxWidth: 50, maxHeight: 50)
                    .overlay(
                        Circle()
                       .stroke(Color.red,lineWidth: 2)
                      ).foregroundColor(Color.init(red: 1, green: 1, blue: 1, opacity: 0.2))
                } else {
                    Path { path in
                        path.move(to: CGPoint(x: 30, y: 30))
                        path.addLine(to: CGPoint(x: 70, y: 70))
                        path.move(to: CGPoint(x: 70, y: 30))
                        path.addLine(to: CGPoint(x: 30, y: 70))
                    }
                    .stroke(Color.gray, lineWidth: 3)
                }
            } else {
                Text(" ").frame(maxWidth: 100, maxHeight: 100).offset(x: 0, y: 0)
            }
        }
        .frame(maxWidth: 100, maxHeight: 100)
        .border(Color.gray)
    }
}

struct BoxView_Previews: PreviewProvider {
    static var previews: some View {
        BoxView(showCircle: .constant(false), isPlayed: .constant(false), startTurnShowCircle: .constant(false), playedBy: .constant("")) {
            
        }
    }
}
