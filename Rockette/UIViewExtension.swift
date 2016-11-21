//
//  UIViewExtension.swift
//  Rockette
//
//  Created by Harsh Bindra on 2016-11-20.
//
//

import UIKit

extension UIView {

    func addBorder(toEdges edges: UIRectEdge, colour: UIColor = UIColor.white, thickness: CGFloat = 2) {

        func border() -> UIView {
            let border = UIView(frame: CGRect.zero)
            border.backgroundColor = colour
            border.translatesAutoresizingMaskIntoConstraints = false
            return border
        }

        if edges.contains(.bottom) || edges.contains(.all) {
            let bottom = border()
            self.addSubview(bottom)
            bottom.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            bottom.heightAnchor.constraint(equalToConstant: thickness).isActive = true
            bottom.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
            bottom.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        }

        if edges.contains(.right) || edges.contains(.all) {
            let right = border()
            self.addSubview(right)
            right.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            right.widthAnchor.constraint(equalToConstant: thickness).isActive = true
            right.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            right.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        }
        
        if edges.contains(.left) || edges.contains(.all) {
            let left = border()
            self.addSubview(left)
            left.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            left.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
            left.widthAnchor.constraint(equalToConstant: thickness).isActive = true
            left.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        }
        
        if edges.contains(.top) || edges.contains(.all) {
            let top = border()
            self.addSubview(top)
            top.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
            top.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
            top.heightAnchor.constraint(equalToConstant: thickness).isActive = true
            top.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        }
    }
}
