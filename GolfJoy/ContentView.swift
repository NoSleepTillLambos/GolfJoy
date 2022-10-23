//
//  ContentView.swift
//  swift-UI
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    @AppStorage("shouldShowOnBoarding") var shouldShowOnboarding: Bool = true
    
    var body: some View {
        TabView {
            Allgolf().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            SettingsView().tabItem {
                Image(systemName: "gear")
                Text("Settings")
            }
            
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
        .fullScreenCover(isPresented: $shouldShowOnboarding, content: {
            OnBoardingView(shouldShowOnBoarding: $shouldShowOnboarding)
        })
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
