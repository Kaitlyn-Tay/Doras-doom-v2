//
//  DetailView.swift
//  Doras-doom-v2
//
//  Created by T Krobot on 9/7/22.
//

import SwiftUI

struct DetailView: View {
    
    @Binding var friend: Friends
    
    var body: some View {
        
        TextField("Edit details", text: $friend.name )
            .multilineTextAlignment(.center)
        
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(friend:.constant(Friends(name: "bob", favDoraCharacter: "bob", gender: "pine", likeBigRedChicken: false, colourOfBoots: "apple")))
    }
}
