//
//  User.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/20/21.
//

import Foundation

struct user: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String = ""
}
