//
//  SectionHeader.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/29/21.
//

import SwiftUI

struct SectionHeader: View {
    let header: String
    var body: some View {
        HStack {
            Text(header)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Spacer()
        }
    }
}

struct SectionHeader_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeader(header: "Sample")
    }
}
