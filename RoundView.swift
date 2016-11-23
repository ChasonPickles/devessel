//
//  RoundView.swift
//  Rockette
//
//  Created by Harsh Bindra on 2016-11-15.
//
//

import UIKit

class RoundView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        self.layer.cornerRadius = min(self.frame.size.width, self.frame.size.height) / 2.0
        self.layer.masksToBounds = true
        self.clipsToBounds = true
//        self.frame = self.bounds
//        self.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addBorder(toEdges: [.all])
    }
    
    func add(image : UIImage){
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = image

        self.addSubview(imageView)
        imageView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
    }
}
