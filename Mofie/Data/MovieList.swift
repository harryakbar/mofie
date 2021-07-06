//
//  MovieList.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 06/07/21.
//

import SwiftUI

struct Movie: Codable, Identifiable {
    var id: Int
    var original_title: String
    var overview: String
    var poster_path: String?
    var vote_average: Double
    var release_date: String
}

struct MovieList: Codable {
    var page: Int
    var results: [Movie]
}


class Api {
    func getMovies(completion: @escaping (MovieList) -> ()) {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=64e221d9b020002211cb5ee503974df0&language=en-US&page=1") else { return }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let movies = try! JSONDecoder().decode(MovieList.self, from: data!)

            DispatchQueue.main.async {
                completion(movies)
            }
        }
        .resume()
    }
}
