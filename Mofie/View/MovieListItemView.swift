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
    var body: some View {
        NavigationLink(
            destination: MovieDetailView()
        ) {
            HStack (alignment: .center) {
                Image(uiImage: "https://www.themoviedb.org/t/p/w440_and_h660_face/kEl2t3OhXc3Zb9FBh1AuYzRTgZp.jpg".load()
                )
                .resizable()
                .scaledToFit()
                .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: 85, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 120)
                .padding(.horizontal, 8)

                VStack(alignment: .leading) {
                    Text("Loki")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Text("Jun 09, 2021")
                        .font(.subheadline)
                    
                    HStack {
                        Text("User Score:")
                            .font(.subheadline)
                        Text("81")
                            .font(.title2)
                    }
                    
                    Text("After stealing the Tesseract during the events of “Avengers: Endgame,” an alternate version of Loki is brought to the mysterious Time Variance Authority, a bureaucratic organization that exists outside of time and space and monitors the timeline. They give Loki a choice: face being erased from existence due to being a “time variant”or help fix the timeline and stop a greater threat.")
                        .font(.subheadline)
                        .italic()
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: 70, alignment: .leading)
                } // VStack
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
