//
//  CollabLoginView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class CollabLoginView: UIView {
    
    lazy var mountainView: UIView = {
        let view = self
        
        let mountainImage = UIImage(named: "mountain background.png")
        let mountainView = UIImageView(image: mountainImage)
        
        
        
        self.addSubview(mountainView)
        //self.addSubview(label)
        return mountainView
    }()
    
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
        //let bottomBound: CGFloat = bounds.maxX * (1.0 - ratio)
        //var rect = CGRect(x: bounds.minX, y: bounds.minY, width: bounds.width, height: (bounds.height - 5.0))
        var rect = bounds
        //let hi =
        //bound the top 20% of screen to be a headerview
        (mountainView.frame, rect) = rect.divided(atDistance: bounds.height , from: .maxYEdge)
        
        
        let SignUp = UIButton()
        SignUp.frame = CGRect(x: bounds.maxX * 0.3, y: bounds.maxY * 0.30, width: bounds.maxX * 0.4, height: bounds.maxY * 0.1)
        SignUp.backgroundColor = UIColor.clear
        SignUp.setTitleColor(UIColor.white, for: .normal)
        SignUp.setTitle("Sign Up", for: .normal)
        mountainView.addSubview(SignUp)
        
        //
        
        
        let emailAddress: UITextField = UITextField()
        emailAddress.frame = CGRect(x: bounds.maxX * 0.25, y: bounds.maxY * 0.45, width: bounds.maxX * 0.5, height: bounds.maxY * 0.07)
        emailAddress.backgroundColor = UIColor.clear
        emailAddress.text = "email Address"
        emailAddress.textColor = UIColor.white
        emailAddress.isUserInteractionEnabled = false
        mountainView.addSubview(emailAddress)
        
        //
        
        let Password: UITextField = UITextField()
        Password.frame = CGRect(x: bounds.maxX * 0.25, y: bounds.maxY * 0.55, width: bounds.maxX * 0.5, height: bounds.maxY * 0.07)
        Password.backgroundColor = UIColor.clear
        Password.text = "Password"
        Password.textColor = UIColor.white
        Password.isUserInteractionEnabled = false
        mountainView.addSubview(Password)
        
        let backButton: UIButton = UIButton()
        backButton.setTitle("back", for: .normal)
        backButton.setTitleColor(UIColor.green, for: .normal)
        
        let backImage = UIImage(named: "Nyan.png")
        
        backButton.setImage(backImage, for: .normal)
        backButton.frame = CGRect(x: bounds.maxX * 0.02, y: bounds.maxX * 0.02, width: bounds.maxX * 0.08, height: bounds.maxX * 0.08)
        mountainView.addSubview(backButton)
    }
        
}
