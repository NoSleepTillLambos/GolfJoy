//
//  SettingsView.swift
//  swift-UI
//
//  Created by Paige Phelps on 2022/10/12.
//

import SwiftUI

struct SettingsView: View {
    
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        VStack {
            Text("Settings")
                .font(.system(size: 30))
                .padding()
            Picker("Mode", selection: $isDarkMode) {
                Text("Light Mode")
                    .tag(false)
                Text("Dark Mode")
                    .tag(true)
            }.pickerStyle(SegmentedPickerStyle())
  
            
            VStack {
                Text("GolfJoy").font(.system(size: 25)).bold().padding()
                
            }
            VStack {
                Text("Welcome to GolfJoy, the first of its kind, offering golfers the chance to learn from the best. Feel free to visit my repo by tapping on the link below").opacity(0.6).padding()
                
                
                
            }
            GroupBox {
                HStack{
                    Text("Repository")
                    Spacer()
                    Link("Github", destination: URL(string: "https://github.com/NoSleepTillLambos?tab=repositories")!)
                                    
                }.padding()
                
            }
            Spacer()
            HStack {
                Text("Version 1.0.0")
                    .opacity(0.6)
                    .padding()
            }
            Spacer()
        }
        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
