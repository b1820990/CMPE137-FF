//
//  File.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/20/21.
//

import SwiftUI

struct VisualEffectView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: .systemChromeMaterial))
    }
    
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        // ...
    }
}
