//
//  ContentView.swift
//  swift-UI
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Allgolf().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            SingleItem().tabItem {
                Image(systemName: "figure.golf")
                Text("Item")
            }
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            
        }
        }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
