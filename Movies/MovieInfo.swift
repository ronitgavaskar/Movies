//
//  MovieInfo.swift
//  Movies
//
//  Created by Ronit Gavaskar on 9/5/20.
//  Copyright © 2020 Ronit Gavaskar. All rights reserved.
//

import SwiftUI
import URLImage

struct MovieInfo: View {
    var movie: Movie
        
    var body: some View {
        VStack {
            Text(movie.title)
                .fontWeight(.bold).font(.title)
            .multilineTextAlignment(.leading)
            .frame(width: 400.0)

            URLImage(URL(string: "https://image.tmdb.org/t/p/w500\(movie.backdropPath)")!)
            
            VStack {
                Text("Overview")
                    .fontWeight(.bold).font(.title).padding()
                Text(movie.overview)
                    .multilineTextAlignment(.leading)
                    .frame(width: 400.0)
            }
            
            
        }
    }
}

struct MovieInfo_Previews: PreviewProvider {
    static var previews: some View {
        MovieInfo(movie: moviesData[16])
        .previewDevice("iPhone 11")
    }
}
