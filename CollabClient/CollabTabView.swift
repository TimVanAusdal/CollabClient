//
//  tabView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class CollabTabView: UIView {
    
    var label: UILabel = UILabel()
    var button: UIButton = UIButton()
    
    override init(frame: CGRect) {
        
        super.init(frame: frame)
        
        
        label.backgroundColor = UIColor.green
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        button.setTitle("go!", for: .normal)
        
        
        let nyan: UIImage = UIImage(named: "sign up.PNG")!
        
        button.setBackgroundImage(nyan, for: UIControlState.normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        addSubview(button)
        
        //layout
        
        let views = ["label":label, "button": button] as [String : Any]
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[label]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[button]|", options: [], metrics: nil, views: views))
        addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label][button(==50)]|", options: [], metrics: nil, views: views))
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
