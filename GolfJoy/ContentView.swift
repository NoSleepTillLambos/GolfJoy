//
//  ContentView.swift
//  swift-UI
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.black).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hi, Name!").font(.system(size: 25, weight: .medium, design: .default)).foregroundColor(.white)
                    .padding(.trailing, 28.0)
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
