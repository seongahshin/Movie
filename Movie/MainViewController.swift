//
//  MainViewController.swift
//  Movie
//
//  Created by 신승아 on 2022/07/05.
//

import UIKit

class MainViewController: UIViewController {
    
    // 랜덤 포스터 선언
    @IBOutlet weak var randomPosterView: UIImageView!
    
    // 미리보기 선언
    @IBOutlet weak var firstMovie: UIImageView!
    
    @IBOutlet weak var secondMovie: UIImageView!
    
    @IBOutlet weak var thirdMovie: UIImageView!
    
    // 랜덤 포스터
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomPosterView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
        
        firstMovie.layer.cornerRadius = 60
        firstMovie.layer.borderWidth = 5
        firstMovie.layer.borderColor = UIColor.white.cgColor
        
        secondMovie.layer.cornerRadius = 60
        secondMovie.layer.borderWidth = 5
        secondMovie.layer.borderColor = UIColor.white.cgColor
        
        thirdMovie.layer.cornerRadius = 60
        thirdMovie.layer.borderWidth = 5
        thirdMovie.layer.borderColor = UIColor.white.cgColor
    }

    
    
    // 버튼 동작
    @IBAction func randomPosterButton(_ sender: UIButton) {
        randomPosterView.image = UIImage(named: "movie\(Int.random(in: 1...5))")
    }
    

}
