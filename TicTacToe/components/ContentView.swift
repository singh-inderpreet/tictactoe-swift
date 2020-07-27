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
    @Binding var boxes: [[String: Any]]; //Declare binding for boxes
    func bindingBool(for key: String, index: Int) -> Binding<Bool> { //Get/Set for boxes binding
        return Binding(get: {
            return self.boxes[index][key] as? Bool ?? false
        }, set: {
            self.boxes[index][key] = $0
        })
    }
    func bindingString(for key: String, index: Int) -> Binding<String> { //Get/Set for boxes binding
        return Binding(get: {
            return self.boxes[index][key] as? String ?? ""
        }, set: {
            self.boxes[index][key] = $0
        })
    }
    
    let widthBox: CGFloat = 100;
    let heightBox: CGFloat = 100;
    let totalHStacks: Int = 3;
    let totalBoxesInARow = 3;
    
    var body: some View {
        GeometryReader { metrics in
            ForEach(0 ..< self.totalHStacks, id: \.self) { index in
                HStack(spacing: 0) {
                    ForEach(index * self.totalHStacks ..< (index * self.totalHStacks + self.totalBoxesInARow), id: \.self) { boxIndex in
                        BoxView(showCircle: self.bindingBool(for: "showCircle", index: boxIndex), isPlayed: self.bindingBool(for: "isPlayed", index: boxIndex), startTurnShowCircle: self.$startTurnShowCircle, playedBy: self.bindingString(for: "playedBy", index: boxIndex)) {
                            self.onContentClicked(boxIndex)
                        }.frame(width: self.widthBox ,height: self.heightBox)
                            .offset(y: (CGFloat)(self.boxes[boxIndex]["offsetY"] as? Double ?? 0));
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(onContentClicked: {_ in
            
        }, showCircle: false, startTurnShowCircle: .constant(false) , boxes: .constant([["d": 0, "": false]]))
    }
}
