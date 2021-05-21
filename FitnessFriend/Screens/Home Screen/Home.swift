//
//  Home.swift
//  FitnessFriend
//
//  Created by Brandon Cheu on 4/8/21.
//

import SwiftUI

struct Home: View {
    let uName = user()
    @EnvironmentObject var cardio: Cardio
    @EnvironmentObject var pl: PL
    @EnvironmentObject var u: userN
    @StateObject var viewModel = HomeModel()
    @State private var test = true
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
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                Text(Date(), style: .date)
                Spacer()
            }
            Divider()
            
            VStack {
                Text("Recent Workouts:")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                VStack{
                    Text("Cardio Workouts")
                    List(cardio.cardioWork.indices, id: \.self){
                        index in cardioCell(cardio: cardio.cardioWork[index], index: index+1)
                    }
                }
                VStack{
                    Text("Power Lifting Workouts")
                    List(pl.plift.indices, id: \.self){
                        index in plCell(pl: pl.plift[index], index: index+1)
                    }
                    
                }
                HStack{
                    if cardio.didWork || pl.didWork {
                        Image(systemName: "checkmark")
                        Text("You excercised today!")
                            .fontWeight(.bold)
                    }
                }
            }
            Spacer()
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
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
