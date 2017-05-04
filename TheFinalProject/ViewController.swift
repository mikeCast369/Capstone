//
//  ViewController.swift
//  TheFinalProject
//
//  Created by Michael Castillo on 4/2/17.
//  Copyright © 2017 Michael Castillo. All rights reserved.
//

import UIKit
import Kingfisher

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
//    let collectionView = UICollectionView()
    let memeController = MemeController.shared
    
    var todaysMeme: Meme? {
        return MemeController.shared.meme
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        memeController.getTodaysMeme()
        
        //FIXME: -  uncomment these
        
//        let nibId = String(describing: SubmissionCollectionViewCell.self)
//        let nib = UINib(nibName: nibId, bundle: nil)
//        collectionView.register(nib, forCellWithReuseIdentifier: nibId)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(memeUpdated(_:)), name: NSNotification.Name.init(rawValue: "memeUpdated"), object: nil)
    }
    
    func memeUpdated(_ notification: NSNotification) {
        guard let todaysMeme = todaysMeme else { return }
            imageView.kf.setImage(with: todaysMeme.imageURL)
    }
    
}

// MARK: - Gif

extension ViewController {
    

    
}


