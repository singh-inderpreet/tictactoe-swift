//
//  ContentView.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { metrics in
            HStack(spacing: 0) {
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 0)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 0)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 0)
            }
            HStack(spacing: 0) {
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 100)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 100)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 100)
            }
            HStack(spacing: 0) {
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 200)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 200)
                BoxView().frame(width: 100 ,height: 100)
                    .offset(y: 200)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
