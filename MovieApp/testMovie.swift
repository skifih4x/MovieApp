//
//  testMovie.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import Foundation
import UIKit

//struct TestTV {
//    let name: String
//    let testMovie: [TestMovie]
//
//}

struct TestMovie {
    let title: String
    let premier: String
    let image: UIImage
}

class Movie {
    
    var movie = [TestMovie]()
    
    init() {
        setup()
    }
    
    func setup() {
        let m1 = TestMovie(title: "ага1", premier: "20.20.2020", image: UIImage(named: "poster")!)
        let m3 = TestMovie(title: "ага2", premier: "20.20.2020", image: UIImage(named: "tvposter-1")!)
        let m2 = TestMovie(title: "ага3", premier: "20.20.2020", image: UIImage(named: "poster")!)
        
        let m4 = TestMovie(title: "да4", premier: "20.20.2030", image: UIImage(named: "tvposter-1")!)
        let m5 = TestMovie(title: "да5", premier: "20.20.2030", image: UIImage(named: "tvposter-1")!)
        let m6 = TestMovie(title: "да6", premier: "20.20.2030", image: UIImage(named: "poster-1")!)
        
        let m7 = TestMovie(title: "всегда7", premier: "20.20.2040", image: UIImage(named: "tvposter-1")!)
//        let m8 = TestMovie(title: "всегда8", premier: "20.20.2040", image: UIImage(named: "poster-2")!)
//        let m9 = TestMovie(title: "всегда9", premier: "20.20.2040", image: UIImage(named: "poster-2")!)
        movie = [m1, m2, m3 , m4, m5, m6, m7]
//        let movie1 = [m1, m2, m3]
//        let movie2 = [m4, m5, m6]
//        let movie3 = [m7, m8, m9]
//
//        let g1 = TestTV(name: "четкие 1", testMovie: movie1)
//        let g2 = TestTV(name: "четкие 2", testMovie: movie2)
//        let g3 = TestTV(name: "четкие 3", testMovie: movie3)
//        let g4 = TestTV(name: "четкие 4", testMovie: movie1)
//        let g5 = TestTV(name: "четкие 5", testMovie: movie2)
//        let g6 = TestTV(name: "четкие 6", testMovie: movie3)
        
//        testMovieAndTV = [g1, g2, g3, g4, g5, g6]
    }
}
