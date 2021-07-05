//
//  ContentView.swift
//  Mofie
//
//  Created by Harry Akbar Ali Munir on 05/07/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(0..<20) { index in
                    MovieListItemView()
                }
            }
            .navigationTitle("Popular Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
