//
//  CardioWorkout.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/18/21.
//

import Foundation


struct CardioWorkout: Hashable, Codable, Identifiable {
    var id = UUID()
    var milesRan: String = ""
}
