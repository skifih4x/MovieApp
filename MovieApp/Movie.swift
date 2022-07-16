//
//  Movie.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import Foundation

struct MovieTask: Decodable {
    let results: [Results]
}

struct Results: Decodable {
    let title: String
    let release_date: String
}

enum Link: String {
    case movieUrlApi = "https://api.themoviedb.org/3/trending/movie/week?api_key=90c9174a2889a3d107e7ad700a2a3d38"
}
