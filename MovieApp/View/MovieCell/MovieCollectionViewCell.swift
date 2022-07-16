//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import UIKit
import Kingfisher

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var posterMovieImage: UIImageView!
    @IBOutlet var nameMovieLabel: UILabel!
    @IBOutlet var sinceMovieLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        posterMovieImage.image = nil
        nameMovieLabel.text = nil
        sinceMovieLabel.text = nil
    }
    
    func setup(with movie: Results) {
        nameMovieLabel.text = movie.title
        sinceMovieLabel.text = movie.release_date
        let url = URL(string: "https://image.tmdb.org/t/p/w500" + movie.poster_path)
        posterMovieImage.kf.setImage(with: url)
    }
}
