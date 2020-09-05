//
//  MovieRow.swift
//  Movies
//
//  Created by Ronit Gavaskar on 9/5/20.
//  Copyright © 2020 Ronit Gavaskar. All rights reserved.
//

import SwiftUI
import URLImage

struct MovieRow: View {
    var movie: Movie
    
    var body: some View {
        HStack {
            Text(movie.title)
                .padding()
            Spacer()
        }
    }
}

struct MovieRow_Previews: PreviewProvider {
    static var previews: some View {
        MovieRow(movie: moviesData[0])
    }
}


