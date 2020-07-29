//
//  ContentView.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let onContentClicked: (_ boxIndex: Int) -> Void
    @State var showCircle: Bool = false;
    @Binding var startTurnShowCircle: Bool;
    @Binding var boxes: [Box] //Declare binding for boxes
    
    let widthBox: CGFloat = 100;
    let heightBox: CGFloat = 100;
    let totalHStacks: Int = 3;
    let totalBoxesInARow = 3;
    
    var body: some View {
        GeometryReader { metrics in
            ForEach(0 ..< self.totalHStacks, id: \.self) { index in
                HStack(spacing: 0) {
                    ForEach(index * self.totalHStacks ..< (index * self.totalHStacks + self.totalBoxesInARow), id: \.self) { boxIndex in
                        BoxView(
                            showCircle: Binding(get: {
                                return self.boxes[boxIndex].showCircle
                            }, set: {
                                self.boxes[boxIndex].showCircle = $0
                            }),
                            isPlayed: Binding(get: {
                                return self.boxes[boxIndex].isPlayed
                            }, set: {
                                self.boxes[boxIndex].isPlayed = $0
                            }),
                            startTurnShowCircle: self.$startTurnShowCircle,
                            playedBy: Binding(get: {
                                return self.boxes[boxIndex].playedBy
                            }, set: {
                                self.boxes[boxIndex].playedBy = $0
                            })) {
                            self.onContentClicked(boxIndex)
                        }.frame(width: self.widthBox ,height: self.heightBox)
                            .offset(y: (CGFloat)(self.boxes[boxIndex].offsetY));
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(onContentClicked: {_ in
            
        }, showCircle: false, startTurnShowCircle: .constant(false) , boxes: .constant([Box].init()))
    }
}
