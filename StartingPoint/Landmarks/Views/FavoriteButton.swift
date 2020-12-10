//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by 권민재 on 2020/12/10.
//  Copyright © 2020 Apple. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundColor(isSet ? Color.yellow : Color.gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
