//
//  MovieListItemView.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 05/07/21.
//

import SwiftUI

extension String {
    func load() -> UIImage {
        do {
            guard let url = URL(string: self) else {
                return UIImage()
            }
            let data: Data = try Data(contentsOf: url)
            
            return UIImage(data: data)
                ?? UIImage()
        } catch {
            
        }
        
        return UIImage()
    }
}

struct MovieListItemView: View {
    var movie: Movie = Movie(id: 0, original_title: "", overview: "", poster_path: "", vote_average: 0, release_date: "")

    var body: some View {
        NavigationLink(
            destination: MovieDetailView(movie: movie)
        ) {
            HStack (alignment: .center) {
                Image(uiImage: "https://image.tmdb.org/t/p/w500/\(movie.poster_path ?? "")".load()
                )
                .resizable()
                .scaledToFit()
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 85, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 120)
                .padding(.trailing, 8)

                VStack(alignment: .leading) {
                    Text(movie.original_title)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text(movie.release_date)
                        .font(.subheadline)
                    
                    HStack {
                        Text("User Score:")
                            .font(.subheadline)
                        Text(String(format:"%.01f", movie.vote_average))
                            .font(.title2)
                    }
                    
                    Text(movie.overview)
                        .font(.subheadline)
                        .italic()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 70, alignment: .leading)
                } // VStack#imageLiteral(resourceName: "simulator_screenshot_11331693-10F0-4975-9BE3-C07E8FE292B2.png")
            } // HStack
        }
    }
}

struct MovieListItemView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItemView()
            .previewLayout(.sizeThatFits)
    }
}
