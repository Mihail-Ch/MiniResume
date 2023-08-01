//
//  ViewController.swift
//  MiniResume
//
//  Created by Михаил Чертов on 01.08.2023.
//

import UIKit

class ViewController: UIViewController {

    let scrollView = UIScrollView()
    let profileView = UIView()
    let photoView = UIView()
    let photoImage = UIImageView(image: UIImage(named: "user"))
    let nameLabel = UILabel()
    let professionLabel = UILabel()
    
    let containerGeo = UIView()
    let iconGeo = UIImageView()
    let geoLabel = UILabel()
    
    let containerSkills = UIView()
    let skillsLabel = UILabel()
    let iconSkills = UIImageView()


    override func loadView() {
        super.loadView()
       // view.layer.backgroundColor = UIColor(red: 0.953, green: 0.953, blue: 0.961, alpha: 1).cgColor
        view.backgroundColor = .systemBackground
        self.navigationItem.title = "Профиль"
        addUI()
        createUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

//    override func viewDidLayoutSubviews() {
//        super.viewDidLayoutSubviews()
//        scrollView.frame = view.bounds
//    }

    
    
    private func addUI() {
        view.addSubview(scrollView)
        
        scrollView.addSubview(profileView)
        
        profileView.addSubview(photoView)
        
        photoView.addSubview(photoImage)
        
        profileView.addSubview(nameLabel)
        profileView.addSubview(professionLabel)
        profileView.addSubview(containerGeo)
        
        containerGeo.addSubview(iconGeo)
        containerGeo.addSubview(geoLabel)
        
        scrollView.addSubview(containerSkills)
        containerSkills.addSubview(skillsLabel)
        containerSkills.addSubview(iconSkills)
    }
}

