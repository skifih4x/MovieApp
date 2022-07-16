//
//  MainViewController.swift
//  MovieApp
//
//  Created by Артем Орлов on 04.07.2022.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet var movieCollection: UICollectionView!
    
    var movieTask: MovieTask? {
        didSet {
            self.movieCollection.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieCollection.register(UINib(nibName: "MovieCollectionViewCell", bundle:  nil), forCellWithReuseIdentifier: "MovieCell")
    
    NetworkManager.shared.fetchMovie(urlString: Link.movieUrlApi.rawValue) { result in
        switch result {
        case .success(let movie):
            self.movieTask = movie
            print(movie.results)
        case .failure(let error):
            print(error, "хер")
        }
    }
}
}

//MARK: - CollectionViewDataSource

extension MainViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        movieTask?.results.count ?? 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MovieCell", for: indexPath) as! MovieCollectionViewCell
        
        if let movieCell = movieTask?.results[indexPath.item] {
            cell.setup(with: movieCell)
        }
        return cell
    }
    
    func fetchData(from url: String?) {
        NetworkManager.shared.fetchMovie(urlString: url ?? "") { result in
            switch result {
            case .success(let movie):
                self.movieTask = movie
                
            case .failure(let error):
                print(error, "хер")
            }
        }
    }
}

//MARK: - CollectionViewDelegate

extension MainViewController: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        //        CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
        CGSize(width: 135, height: 250)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
    
    
}
