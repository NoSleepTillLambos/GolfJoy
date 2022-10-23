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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct detailedView_Previews: PreviewProvider {
    static var previews: some View {
        detailedView(video: golfList.golfInfo.first!)
    }
}
