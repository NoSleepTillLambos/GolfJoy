//
//  onBoarding.swift
//  swift-UI
//
//  Created by Paige Phelps on 2022/10/15.
//

import Foundation
import SwiftUI

// ONBOARDING VIEWS
struct OnBoardingView: View {
    @Binding var shouldShowOnBoarding: Bool
    var body: some View {
        ZStack {
            Color("Teal").ignoresSafeArea(.all)
            TabView {
                        PageView(title: "The all in one golfing experience", imageName: "Mask group", logo: "smallLogo-3", showDismissButton: false,shouldShowOnBoarding: $shouldShowOnBoarding)
                            
                PageView(title: "Get feedback from some of the worlds best!", imageName: "golfCourse-2", logo: "smallLogo-3",showDismissButton: false,shouldShowOnBoarding: $shouldShowOnBoarding)
                            
                PageView(title: "Welcome to golf joy!", imageName: "golfSwing-2",logo: "smallLogo-3", showDismissButton: true,shouldShowOnBoarding: $shouldShowOnBoarding)
                            
                    }
                    .tabViewStyle(PageTabViewStyle())
        }
        
        }
    
}
struct PageView: View {
    let title: String
    let imageName: String
    let logo: String
    let showDismissButton: Bool
    @Binding var shouldShowOnBoarding: Bool
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(title)
                .font(.system(size: 20))
                .foregroundColor(.white)
                .padding()
            Image(logo)
                .frame(width:30, height: 30)
                .padding()
            if showDismissButton {
                Button(action: {
                    shouldShowOnBoarding.toggle()
                }, label: {
                    Text("Get started!")
                        .bold()
                        .frame(width: 300, height: 50)
                        .foregroundColor(Color.black)
                        .background(Color.white)
                        .cornerRadius(6)
                })
            }
        }
    }
}
