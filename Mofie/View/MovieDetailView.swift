//
//  MovieDetailView.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 05/07/21.
//

import SwiftUI

struct MovieDetailView: View {
    var body: some View {
        ScrollView {
            Image(uiImage: "https://www.themoviedb.org/t/p/w440_and_h660_face/kEl2t3OhXc3Zb9FBh1AuYzRTgZp.jpg".load()
            )
            .resizable()
            .scaledToFit()
            
            VStack(alignment: .leading) {
                HStack {
                    Text("Loki")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Text("Jun 09, 2021")
                        .font(.subheadline)
                }

                                
                HStack {
                    Text("User Score:")
                        .font(.subheadline)
                    Text("81")
                        .font(.title2)
                }
                
                Text("Overview:")
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .padding(.top, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Text("After stealing the Tesseract during the events of “Avengers: Endgame,” an alternate version of Loki is brought to the mysterious Time Variance Authority, a bureaucratic organization that exists outside of time and space and monitors the timeline. They give Loki a choice: face being erased from existence due to being a “time variant”or help fix the timeline and stop a greater threat.")
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
