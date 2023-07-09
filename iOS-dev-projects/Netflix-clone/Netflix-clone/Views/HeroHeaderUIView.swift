//
//  HeroHeaderUIView.swift
//  Netflix-clone
//
//  Created by Chidu Anush on 09/07/23.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    
    private let downloadButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Download", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
    }()
    
    
    private let playButton: UIButton = {
        
        let button = UIButton()
        button.setTitle("Play", for: .normal)
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.borderWidth = 1
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let heroImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage (named: "heroImage")
        return imageView
    }()
    
    
    private func addGradient() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageView)
        addGradient()
        addSubview(playButton)
        addSubview(downloadButton)
        applyConstraints()
    }
    
    private func applyConstraints() {
        
        let playButtonConstrains = [
            playButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            playButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            playButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        let downloadButtonConstrains = [
            downloadButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 135),
            downloadButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            downloadButton.widthAnchor.constraint(equalToConstant: 100)
        ]
        
        NSLayoutConstraint.activate(playButtonConstrains)
        NSLayoutConstraint.activate(downloadButtonConstrains)

        
    }
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageView.frame = bounds
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }



}
