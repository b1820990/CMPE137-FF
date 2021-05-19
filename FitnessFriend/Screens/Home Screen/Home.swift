//
//  Home.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import SwiftUI
import UIKit

struct Home: View {
    @State private var checked = false
    var body: some View {
        VStack (alignment: .leading){
            HStack {
                Spacer()
                Text("Summary")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Spacer()
            }
            HStack{
                Spacer()
                Text("Today:")
                Text(Date(), style: .date)
                Spacer()
            }
            Divider()
            HStack{
                Spacer()
                Text("Did you workout today? ")
                CheckBoxView(checked: $checked)
                Spacer()
            }.padding(.bottom, 30)
            
            HStack {
                Text("Activity:")
            }
            Spacer()
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

struct CheckBoxView: View {
    @Binding var checked: Bool

    var body: some View {
        Image(systemName: checked ? "checkmark.square.fill" : "square")
            .foregroundColor(checked ? Color(UIColor.systemBlue) : Color.secondary)
            .onTapGesture {
                self.checked.toggle()
            }
    }
}

struct CheckBoxView_Previews: PreviewProvider {
    struct CheckBoxViewHolder: View {
        @State var checked = false

        var body: some View {
            CheckBoxView(checked: $checked)
        }
    }

    static var previews: some View {
        CheckBoxViewHolder()
    }
}



