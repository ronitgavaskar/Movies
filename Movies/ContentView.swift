//
//  ContentView.swift
//  Movies
//
//  Created by Ronit Gavaskar on 9/5/20.
//  Copyright © 2020 Ronit Gavaskar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var results = [Movie]()
    
    var body: some View {
        NavigationView {
            List(results) { movie in
                NavigationLink(destination: MovieInfo(movie: movie)) {
                    MovieRow(movie: movie)
                }
            }.onAppear(perform: loadData)
        .navigationBarTitle("Top Movies")
        }
        
    }
    
    func loadData() {
        
        let API_KEY = ""
        
        // 1. lets create the url first
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=\(API_KEY)&language=en-US&page=1") else {
            print("Invalid URL")
            return
        }
        
        // 2. wrap this in a URLRequest
        let request = URLRequest(url: url)

        // 3. create and start a networking task from req
        URLSession.shared.dataTask(with: request) { data, response, error in
            // 4. handle the results array from tmdb
            
            if let data = data {
                if let resp = try? JSONDecoder().decode(MovieResults.self, from: data) {
                    // if we have good data then send to main thread
                    
                    DispatchQueue.main.async {
                        self.results = resp.results
                    }

                    // everything is good, so we can exit
                    return
                }
            }

            // if we're still here it means there was a problem
            print("Fetch failed: \(error?.localizedDescription ?? "Unknown error")")
        }.resume()
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
