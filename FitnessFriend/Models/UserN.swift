//
//  UserN.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/20/21.
//

import Foundation

class userN: ObservableObject {
    @Published var userName = [user]()
    
    func add(_ name: user){
        userName.append(name)
    }
}
