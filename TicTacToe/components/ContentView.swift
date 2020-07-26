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
    @Binding var boxes: [[String: Any]]; //Declare binding for boxes
    func binding(for key: String, index: Int) -> Binding<Bool> { //Get/Set for boxes binding
        return Binding(get: {
            return self.boxes[index][key] as? Bool ?? false
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
                        BoxView(showCircle: self.binding(for: "showCircle", index: boxIndex)){
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
            
        }, showCircle: false, boxes: .constant([["d": 0, "": false]]))
    }
}
