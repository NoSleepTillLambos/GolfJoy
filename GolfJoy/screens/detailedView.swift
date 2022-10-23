//
//  detailedView.swift
//  swift-UI
//
//  Created by Paige Phelps on 2022/10/23.
//

import SwiftUI

struct detailedView: View {
    
    var video: Video
    var body: some View {
        VStack(spacing: 17) {
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 140)
                .cornerRadius(8)
            Text(video.title)
                .font(.title)
                .fontWeight(.semibold)
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            HStack(spacing: 40) {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                
                Text(video.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch")
                    .bold()
                    .font(.title2)
                    .frame(width: 150, height: 50)
                    .background(Color(.systemRed))
                    .foregroundColor(.white)
                    .cornerRadius(8)
            })
        }
    }
}

struct detailedView_Previews: PreviewProvider {
    static var previews: some View {
        detailedView(video: golfList.golfInfo.first!)
    }
}
