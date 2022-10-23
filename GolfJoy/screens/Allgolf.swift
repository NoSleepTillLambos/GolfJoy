//
//  Allgolf.swift
//  swift-UI
//
//  Created by Paige Phelps on 2022/10/12.
//

import SwiftUI

struct Allgolf: View {
    
    var videos: [Video] = golfList.golfInfo
    var body: some View {
        
        NavigationView {
            List(videos, id: \.id) { video in
                NavigationLink(
                destination: detailedView(video: video),
                label: {
                 Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 70)
                        .cornerRadius(4)
                    
                    VStack(alignment: .leading, spacing: 5){
                        Text(video.title)
                            .fontWeight(.medium)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                })
                
                
            }
            .navigationTitle("Browse our training videos")
        }
        
        
    }
}

struct Allgolf_Previews: PreviewProvider {
    static var previews: some View {
        Allgolf()
    }
}
