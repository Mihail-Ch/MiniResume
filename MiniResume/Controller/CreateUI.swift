//
//  CreateUI.swift
//  MiniResume
//
//  Created by Михаил Чертов on 01.08.2023.
//

import UIKit


extension ViewController {
    
    func createUI() {
        setupScrollView()
        setupProfileView()
        setupPhotoView()
        setupImageView()
        setupNameLabel()
        setupProfessionLabel()
        setupGeoContaianer()
        setupSkillsContainer()
        
        createConstraints()
    }
    
    private func setupScrollView() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.isDirectionalLockEnabled = true
        scrollView.showsVerticalScrollIndicator = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.backgroundColor = .clear
    }
    
    private func setupProfileView() {
        profileView.translatesAutoresizingMaskIntoConstraints = false
        profileView.layer.backgroundColor = UIColor(red: 0.953, green: 0.953, blue: 0.961, alpha: 1).cgColor
    }
    
    private func setupPhotoView() {
        photoView.translatesAutoresizingMaskIntoConstraints = false
        photoView.clipsToBounds = true
        photoView.layoutIfNeeded()
        photoView.layer.cornerRadius = 60
        photoView.backgroundColor = .systemBlue
    }
    
    private func setupImageView() {
        photoImage.translatesAutoresizingMaskIntoConstraints = false
        photoImage.contentMode = .scaleAspectFill
    }
    
    private func setupNameLabel() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        nameLabel.font = UIFont.boldSystemFont(ofSize: 24)
        nameLabel.text = "Чертов Михаил Сергеевич"
        nameLabel.numberOfLines = 2
        nameLabel.textAlignment = .center
       // nameLabel.lineBreakMode = .byWordWrapping
    }
    
    private func setupProfessionLabel() {
        professionLabel.translatesAutoresizingMaskIntoConstraints = false
        professionLabel.textColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        professionLabel.font = UIFont.systemFont(ofSize: 14)
        professionLabel.text = "iOS-разработчик, опыт более 6-и месяцев"
    }
    
    private func setupGeoContaianer() {
        containerGeo.translatesAutoresizingMaskIntoConstraints = false
        
        iconGeo.translatesAutoresizingMaskIntoConstraints = false
        iconGeo.image = UIImage(named: "geo")
        iconGeo.frame = CGRect(x: 0, y: 0, width: 16, height: 16)
        
        geoLabel.translatesAutoresizingMaskIntoConstraints = false
        geoLabel.textColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        geoLabel.font = UIFont.systemFont(ofSize: 14)
        geoLabel.text = "Москва"
    }
   
    
    private func setupSkillsContainer() {
        containerSkills.translatesAutoresizingMaskIntoConstraints = false
        
        skillsLabel.translatesAutoresizingMaskIntoConstraints = false
        skillsLabel.textColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        skillsLabel.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        skillsLabel.text = "Мои навыки"
        
        iconSkills.translatesAutoresizingMaskIntoConstraints = false
        iconSkills.image = UIImage(named: "pencel")
        iconSkills.frame = CGRect(x: 0, y: 0, width: 24, height: 24)
    
    }
    
    private func createConstraints() {
        
        NSLayoutConstraint.activate([
            
           // scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            profileView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            profileView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            profileView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            profileView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            profileView.heightAnchor.constraint(equalToConstant: view.frame.width),
            
            photoView.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            photoView.topAnchor.constraint(equalTo: profileView.topAnchor, constant: 24),
            photoView.heightAnchor.constraint(equalToConstant: 120),
            photoView.widthAnchor.constraint(equalTo: photoView.heightAnchor, multiplier: 1/1),
            
            photoImage.topAnchor.constraint(equalTo: photoView.topAnchor),
            photoImage.leadingAnchor.constraint(equalTo: photoView.leadingAnchor),
            photoImage.trailingAnchor.constraint(equalTo: photoView.trailingAnchor),
            photoImage.bottomAnchor.constraint(equalTo: photoView.bottomAnchor),
            
            nameLabel.centerXAnchor.constraint(equalTo: photoView.centerXAnchor),
            nameLabel.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 16),
            nameLabel.widthAnchor.constraint(equalToConstant: 149),
            nameLabel.heightAnchor.constraint(equalToConstant: 64),
            
            professionLabel.centerXAnchor.constraint(equalTo: nameLabel.centerXAnchor),
            professionLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 4),
            professionLabel.widthAnchor.constraint(equalToConstant: 273),
            professionLabel.heightAnchor.constraint(equalToConstant: 20),
            
            containerGeo.centerXAnchor.constraint(equalTo: professionLabel.centerXAnchor),
            containerGeo.topAnchor.constraint(equalTo: professionLabel.bottomAnchor, constant: 0),
            containerGeo.widthAnchor.constraint(equalToConstant: 73),
            containerGeo.heightAnchor.constraint(equalToConstant: 20),
            
            iconGeo.centerYAnchor.constraint(equalTo: containerGeo.centerYAnchor),
            iconGeo.leadingAnchor.constraint(equalTo: containerGeo.leadingAnchor),
            iconGeo.widthAnchor.constraint(equalToConstant: 16),
            iconGeo.heightAnchor.constraint(equalToConstant: 16),

            geoLabel.centerYAnchor.constraint(equalTo: containerGeo.centerYAnchor),
            geoLabel.leadingAnchor.constraint(equalTo: iconGeo.trailingAnchor),
            geoLabel.trailingAnchor.constraint(equalTo: containerGeo.trailingAnchor),
           
            containerSkills.centerXAnchor.constraint(equalTo: profileView.centerXAnchor),
            containerSkills.topAnchor.constraint(equalTo: profileView.bottomAnchor, constant: -40),
            containerSkills.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            containerSkills.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            containerSkills.widthAnchor.constraint(equalToConstant: 20),
            
            skillsLabel.centerYAnchor.constraint(equalTo: containerSkills.centerYAnchor),
            skillsLabel.leadingAnchor.constraint(equalTo: containerSkills.leadingAnchor),
            
            iconSkills.centerYAnchor.constraint(equalTo: containerSkills.centerYAnchor),
            iconSkills.trailingAnchor.constraint(equalTo: containerSkills.trailingAnchor),
            iconSkills.leadingAnchor.constraint(equalTo: skillsLabel.trailingAnchor, constant: 8)
            
        ])
    }
}
