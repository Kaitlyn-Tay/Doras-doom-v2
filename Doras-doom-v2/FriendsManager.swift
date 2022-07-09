//
//
//  FriendsManager.swift
//  Doras-doom-v2
//
//  Created by    wuniutian on 9/7/22.
//

import Foundation

import SwiftUI

class FriendsManager: ObservableObject {
    @Published var friendss: [Friends] = [] {
        didSet {
            save()
        }
    }
    
    let sampleFriendss: [Friends] = []
    
    init() {
        load()
    }
    
    func getArchiveURL() -> URL {
        let plistName = "friendss.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedFriendss = try? propertyListEncoder.encode(friendss)
        try? encodedFriendss?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        let propertyListDecoder = PropertyListDecoder()
        
        var finalFriendss: [Friends]!
        
        if let retrievedFriendsData = try? Data(contentsOf: archiveURL),
            let decodedFriendss = try? propertyListDecoder.decode([Friends].self, from: retrievedFriendsData) {
            finalFriendss = decodedFriendss
        } else {
            finalFriendss = sampleFriendss
        }
        
        friendss = finalFriendss
    }
}
