//
//  MovieDetailView.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 05/07/21.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie = Movie(id: 0, original_title: "", overview: "", poster_path: "", vote_average: 0, release_date: "")
    
    var body: some View {
        ScrollView {
            Image(uiImage: "https://image.tmdb.org/t/p/w500/\(movie.poster_path ?? "")".load()
            )
            .resizable()
            .scaledToFit()
            
            VStack(alignment: .leading) {
                HStack {
                    Text(movie.original_title)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text(movie.release_date)
                        .font(.subheadline)
                }

                                
                HStack {
                    Text("User Score:")
                        .font(.subheadline)
                    Text(String(format:"%.01f", movie.vote_average))
                        .font(.title2)
                }
                
                Text("Overview:")
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text(movie.overview)
                    .font(.subheadline)
                    .italic()
            } // VStack
            .padding(.horizontal, 20)

        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView()
    }
}
