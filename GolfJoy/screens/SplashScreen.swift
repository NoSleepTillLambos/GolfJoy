//
//  SplashScreen.swift
//  swift-UI
//
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.01
    @State private var opacity = 0.3
    
    var body: some View {
        if isActive {
            ContentView()
        } else {
            ZStack{
                Color("Teal").ignoresSafeArea(.all)
                VStack{
                    Image("SwiftIcon").renderingMode(.original).resizable().scaledToFit().frame(width: 200, height: 200)
                    
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 1.2
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) {
                    self.isActive = true
                }
            }
        }
        
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
