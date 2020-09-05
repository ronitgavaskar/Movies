//
//  Movie.swift
//  Movies
//
//  Created by Ronit Gavaskar on 9/5/20.
//  Copyright © 2020 Ronit Gavaskar. All rights reserved.
//

import SwiftUI

struct Movie: Hashable, Codable, Identifiable {
    var id: Int
    var adult: Bool
    var title: String
    var overview: String
    var originalTitle: String
    var releaseDate: String
    var backdropPath: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case adult
        case title
        case overview
        case originalTitle = "original_title"
        case releaseDate = "release_date"
        case backdropPath = "backdrop_path"
    }
}

//{
//  "id" : 718444,
//  "adult" : false,
//  "backdrop_path" : "\/x4UkhIQuHIJyeeOTdcbZ3t3gBSa.jpg",
//  "original_title" : "Rogue",
//  "genre_ids" : [
//    28
//  ],
//  "vote_average" : 5.9000000000000004,
//  "popularity" : 1094.47,
//  "poster_path" : "\/uOw5JD8IlD546feZ6oxbIjvN66P.jpg",
//  "title" : "Rogue",
//  "overview" : "Battle-hardened O’Hara leads a lively mercenary team of soldiers on a daring mission: rescue hostages from their captors in remote Africa. But as the mission goes awry and the team is stranded, O’Hara’s squad must face a bloody, brutal encounter with a gang of rebels.",
//  "original_language" : "en",
//  "vote_count" : 141,
//  "release_date" : "2020-08-20",
//  "video" : false
//},
