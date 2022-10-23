//
//  Video.swift
//  SwiftUI-List-Starter
//
//  Created by Paige Phelps on 10/21/22.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
   let imageName: String
   let title: String
   let description: String
   let viewCount: Int
   let uploadDate: String
   let url: URL
}

struct golfList {
   
   static let golfInfo = [
       Video(imageName: "hq720",
             title: "Tips for the driver",
             description: "In this video Rick Shiels runs through the do's and dont's of using the driver and steps you can take to take control of your swing",
             viewCount: 1900000,
             uploadDate: "2020",
             url: URL(string: "https://www.youtube.com/watch?v=r5u52YuNVG8")!),
       
       Video(imageName: "hqdefault",
             title: "Hitting better iron shots",
             description: "Watch this video featuring Tiger Woods and Colin Morikawa as they break down their swing thoughts and patterns",
             viewCount: 1500000,
             uploadDate: "2021",
             url: URL(string: "https://www.youtube.com/watch?v=7zXrDVRj3eM")!),
       
       Video(imageName: "hq720-2",
             title: "Dustin Johnson, talking fades",
             description: "Dustin Johnson and Colin Morikawa take a deep dive into hitting fades",
             viewCount: 150000,
             uploadDate: "2022",
             url: URL(string: "https://www.youtube.com/results?search_query=dustin+johnson+irons+talking+about+irons")!),
             
       Video(imageName: "hqdefault-2",
             title: "How John Rahm controls his wedges",
             description: "Rahm breaks down his thoughts over the ball and the steps his takes to take advantage of his positioning and placement",
             viewCount: 127000,
             uploadDate: "2020",
             url: URL(string: "https://youtu.be/DBWu6TnhLeY")!),
       
       Video(imageName: "hq720-3",
             title: "Improving your drive with Rory Mcilroy",
             description: "Watch and learn from one of the worlds best and longest hitters of the ball and how he manages to generate so much power",
             viewCount: 2900000,
             uploadDate: "2020",
             url: URL(string: "https://www.youtube.com/results?search_query=rory+mcilroy+tips")!),
       
       Video(imageName: "hq720-4",
             title: "Rick Shiels putting tips",
             description: "Rick Shiels brings in one of the worlds best putting coaches",
             viewCount: 1600000,
             uploadDate: "2019",
             url: URL(string: "https://www.youtube.com/results?search_query=putting+lessons+golf")!),
       
       Video(imageName: "hqdefault-3",
             title: "Tiger Woods' practice routine",
             description: "Tiger Woods' interview with GolfDigest and how he practices and warms up before a long day",
             viewCount: 1000000,
             uploadDate: "2022",
             url: URL(string: "https://www.youtube.com/results?search_query=fairway+woods+lesson+tiger+woods+lessons")!),
       
       Video(imageName: "hq720-5",
             title: "Tommy Fleetwoods trusted iron drill",
             description: "Watch and learn as Tommy takes us through a game changing drill",
             viewCount: 623000,
             uploadDate: "2021",
             url: URL(string: "https://www.youtube.com/results?search_query=tommy+fleetwood+practice+drills")!),
       
       Video(imageName: "hq720-6",
             title: "Justin Thomas tips for hitting your driver further",
             description: "Thomas breaks down how he goes after a ball when needing to hit it a bit longer and cleaner",
             viewCount: 132000,
             uploadDate: "2016",
             url: URL(string: "https://www.youtube.com/results?search_query=golf+drills+justin+thomas")!),
       
       Video(imageName: "hq720-7",
             title: "Tony Finau range session",
             description: "Tony Finau talks about his game and shows his favourite tips and tricks at the range",
             viewCount: 6600,
             uploadDate: "2021",
             url: URL(string: "https://www.youtube.com/results?search_query=tony+finau+drills")!)
   ]
}
