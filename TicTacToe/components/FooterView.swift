//
//  FooterView.swift
//  TicTacToe
//
//  Created by inderpreet singh on 24/07/20.
//  Copyright © 2020 inderpreet singh. All rights reserved.
//

import SwiftUI

struct FooterView: View {
    @Binding  var updatePlayerState: Bool;
    
    var body: some View {
        HStack {
            if updatePlayerState {
                Text("Payer 1 turn")
            } else {
                Text("Payer 2 turn")
            }
            
        }
    }
}

struct FooterView_Previews: PreviewProvider {
    static var previews: some View {
        FooterView(updatePlayerState: .constant(true))
    }
}
