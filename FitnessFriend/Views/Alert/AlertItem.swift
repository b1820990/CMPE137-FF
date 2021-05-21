//
//  AlertItem.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/20/21.
//

import SwiftUI

struct AlertItem {
    let title       : Text
    let message     : Text
    let image       : String
    let imageColor  : Color
}

struct AlertContext {
    
    static let workoutAdded  = AlertItem(title: Text("Success!"),
                                        message: Text("Workout added"),
                                        image: "checkmark", imageColor: .blue)

}
