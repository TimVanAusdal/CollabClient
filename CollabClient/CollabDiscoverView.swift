//
//  CollabDiscoverView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class CollabDiscoverView: UIView {
    
    lazy var profilePic: UIView = {
        let view: UIView = UIView()
        
        view.backgroundColor = UIColor.white
        //self.addSubview(view)
        
        return view
    }()
    
    lazy var innerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        
        //let button: UIButton = UIButton()
        
        
        self.addSubview(view)
        
        return view
    }()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        var rect = bounds
        innerView.frame = rect
        (_, rect) = rect.divided(atDistance: bounds.height *
        0.3, from: .minYEdge)
        
        (profilePic.frame, rect) = rect.divided(atDistance: bounds.height * 0.4, from: .minYEdge)
        
        //profilePic.bounds = bounds
        let imageBound: CGRect = CGRect(x: profilePic.frame.maxX * 0.25, y: profilePic.frame.maxY * 0.25, width: profilePic.frame.width * 0.5, height: profilePic.frame.height * 0.5)
        //fix. Don't want it to crash.
        let image: UIImage = UIImage(named: "Nyan.png")!
        let imageView: UIImageView = UIImageView(image: image)
        imageView.frame = imageBound
        profilePic.addSubview(imageView)
        
    }
}
