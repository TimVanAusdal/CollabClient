//
//  HomeView.swift
//  CollabClient
//
//  Created by u1034691 on 4/1/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class HomeView: UIView {
    
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        label.backgroundColor = UIColor.green
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        button.setTitle("go!", for: .normal)
        
        let nyan: UIImage = UIImage(named: "Nyan.png")!
        //let nyanImage: UIImageView = UIImageView(nyan)
        
        button.setBackgroundImage(nyan, for: UIControlState.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)
        
        let views = ["label":label, "button": button] as [String : Any]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[button]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label][button(==50)]|", options: [], metrics: nil, views: views))
        
        
    }
    
    required init?(coder acoder: NSCoder){
        fatalError("init (coder:) hasn't been implemented")
    }
}

