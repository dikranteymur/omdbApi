//
//  ContentView.swift
//  FilmKitabi
//
//  Created by mdt on 28.03.2021.
//

import SwiftUI

struct FilmListeView: View {
    @ObservedObject var filmListeViewModel: FilmListeViewModel
    
    init() {
        self.filmListeViewModel = FilmListeViewModel()
        self.filmListeViewModel.filmAramasiYap(filmIsmi: "titanic")
    }
    
    var body: some View {
        List(filmListeViewModel.filmler, id: \.imdbId) { film in
            Text(film.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FilmListeView()
    }
}
