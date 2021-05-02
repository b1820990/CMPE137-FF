//
//  TextField.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/29/21.
//

import SwiftUI

struct FFTextField: View {
    let titleKey: String
    @Binding var text: String
    
    var body: some View {
        VStack(spacing: -1){
            TextField(titleKey, text: $text)
                .frame(height: 60)
                .font(.title3)
            Divider()
                .frame(height: 1)
        }
    }
}

struct TextField_Previews: PreviewProvider {
    static var previews: some View {
        FFTextField(titleKey: "Sample", text: .constant(""))
    }
}
