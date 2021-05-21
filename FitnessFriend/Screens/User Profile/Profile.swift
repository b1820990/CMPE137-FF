//
//  Profile.swift
//  FitnessFriend
//
//  Created by Cindy Carrillo on 5/17/21.
//

import SwiftUI

struct Profile: View {
    
@State private var name: String = ""
@State private var age: String = ""
@State private var curWeight: String = ""
@State private var goWeight: String = ""
@State private var checked1 = false
@State private var checked2 = false
@State private var checked3 = false
@State private var checked4 = false
@State private var checked5 = false
@State private var checked6 = false
@State private var checked7 = false
    @EnvironmentObject var user: userN
    @StateObject var viewModel = UserModel()

    var body: some View {
        
        NavigationView {
        VStack {
            VStack {
                FFTextField(titleKey: "Name", text: $viewModel.user1.name)
                    .disableAutocorrection(true)
                FFTextField(titleKey:"Age", text: $age)
                    .keyboardType(.numberPad)
                FFTextField(titleKey:"Current Weight", text: $curWeight)
                    .keyboardType(.numberPad)
                FFTextField(titleKey:"Goal Weight", text: $goWeight)
                    .keyboardType(.numberPad)
            }
            .padding(.bottom, 30)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {user.add(viewModel.user1)}, label: {
                Text("Submit")
            })
            Divider()
            VStack {
                Text("Workout Schedule ")
                    .fontWeight(.bold)
                    .foregroundColor(Color.blue)
                HStack{
                    Spacer()
                    VStack {
                        Text("Mon")
                        CheckBoxView(checked: $checked1)
                    }
                    VStack {
                        Text("Tue")
                        CheckBoxView(checked: $checked2)
                    }
                    VStack {
                        Text("Wed")
                        CheckBoxView(checked: $checked3)
                    }
                    VStack {
                        Text("Thu")
                        CheckBoxView(checked: $checked4)
                    }
                    VStack {
                        Text("Fri")
                        CheckBoxView(checked: $checked5)
                    }
                    VStack {
                        Text("Sat")
                        CheckBoxView(checked: $checked6)
                    }
                    VStack {
                        Text("Sun")
                        CheckBoxView(checked: $checked7)
                    }
                    Spacer()
                }
                .padding(.top, 5)
            }
            .padding(.bottom,5)
            
            .textFieldStyle(RoundedBorderTextFieldStyle())
            
            .navigationBarTitle("About Me")
            .navigationBarItems(
                leading: // Add our leading view
                Text("Fitness Friend Member")
                    .font(.body)
                    .foregroundColor(Color(.systemGray)),
                trailing: // Add trailing view
                    Image("FFLogo2")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle()))
        }
    }
        
    }
}

struct Profile_Previews: PreviewProvider {
    static var previews: some View {
        Profile()
    }
}


