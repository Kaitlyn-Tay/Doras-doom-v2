//
//  ContentView.swift
//  Doras-doom-v2
//
//  Created by rgs on 9/7/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var friendsManager = FriendsManager()
    
    @State var friends = [
        Friends(name: "Yun Jun", favDoraCharacter: "Dora", gender: "Female", likeBigRedChicken: true, colourOfBoots: "Purple"),
        Friends(name: "Alina", favDoraCharacter: "Big mac chicken", gender: "Female", likeBigRedChicken: false, colourOfBoots: "colourless"),
        Friends(name: "Kaitlyn", favDoraCharacter: "Yun Jun", gender: "Pineapple", likeBigRedChicken: false, colourOfBoots: "white"),
        Friends(name: "Yuhan", favDoraCharacter: "Hao yuan", gender: "Unknown", likeBigRedChicken: true, colourOfBoots: "black"),
        Friends(name: "Christopher", favDoraCharacter: "Dora", gender: "Female", likeBigRedChicken: true, colourOfBoots: "pink"),
        Friends(name: "Guan Yi", favDoraCharacter: "myself", gender: "Male", likeBigRedChicken: false, colourOfBoots: "Blue"),
        Friends(name: "Wu Niutian", favDoraCharacter: "Chase", gender: "Male", likeBigRedChicken: true, colourOfBoots: "pink")]
    var body: some View {
        
        NavigationView {
            List{
                ForEach($friends) { $friend in
                    NavigationLink{
                        DetailView(friend: $friend)
                    } label: {
                        Text(friend.name)
                    }
                
      
                
            }
            .navigationTitle("Friend List")
            }
        }

       

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
