//
//  view+ext.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 5/20/21.
//

import SwiftUI

extension View {
    func toast(isPresenting: Binding<Bool>, alertItem: AlertItem) -> some View {
        return
            Toast(
                isPresenting: isPresenting,
                presentingView: { self },
                item: alertItem
            )
    }
}
