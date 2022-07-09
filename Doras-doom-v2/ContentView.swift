//
//  ContentView.swift
//  Doras-doom-v2
//
//  Created by rgs on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List(friends) { friend in
                
                Text(friend.name)
                
            }
            .navigationTitle("Friend List")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
