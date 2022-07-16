//
//  MovieCollectionViewCell.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var posterMovieImage: UIImageView!
    @IBOutlet var nameMovieLabel: UILabel!
    @IBOutlet var sinceMovieLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    override func prepareForReuse() {
        super.prepareForReuse()
        //        posterMovieImage.image = nil
        //        nameMovieLabel.text = nil
        //        sinceMovieLabel.text = nil
    }
    
    func setup(with movie: Results) {
        //        posterMovieImage.image = movie.title
        nameMovieLabel.text = movie.title
        sinceMovieLabel.text = movie.release_date
    }
}
