//
//  ContentView.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    @State var movies: MovieList = MovieList(page: 0, results: [])
    
    var body: some View {
        NavigationView {
            List(movies.results) { movie in
                MovieListItemView(movie: movie)
            }
            .onAppear {
                Api().getMovies { (movies) in
                    self.movies = movies
                }
            }
            .navigationTitle("🎥 Popular Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
