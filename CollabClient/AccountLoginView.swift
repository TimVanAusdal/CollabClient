//
//  CollabLoginView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit


class AccountLoginView: UIView {
    
    //vars
    
    //background image
    lazy var mountainView: UIView = {
        let view = self
        let mountainImage = UIImage(named: "mountain background.png")
        let mountainView = UIImageView(image: mountainImage)
        
        self.addSubview(mountainView)
        return mountainView
    }()
    
    
    //top image with word collab and profile
    lazy var headerView: UIView = {
        let view = self
        let logoImage = UIImage(named: "top part.PNG")
        let logoView = UIImageView(image: logoImage)
        
        self.addSubview(logoView)
        return logoView
    }()
    
    //View To switch tabs with
    lazy var tabView: CollabTabGeneralView = {
        let view = CollabTabGeneralView()
        self.addSubview(view)
        return view
    }()
    
    var backButton: UIButton = UIButton()
    //layout
    var submitButton: UIButton = UIButton()
    
    override func layoutSubviews(){
        
        super.layoutSubviews()
        
        let ratio:CGFloat = 0.12
        var rect = bounds
        
        (headerView.frame, rect) = rect.divided(atDistance: rect.height * ratio , from: .minYEdge)
        (mountainView.frame, tabView.frame) = rect.divided(atDistance: rect.height * (1.0 - ratio), from: .minYEdge)
        
        
        
        //text
        
        let Login = UIButton()
        Login.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.20, width: bounds.maxX, height: bounds.maxY * 0.1)
        Login.backgroundColor = UIColor.clear
        Login.setTitleColor(UIColor.white, for: .normal)
        Login.setTitle("Log In", for: .normal)
        Login.titleLabel?.font = UIFont(name: "Times New Roman", size: 30)
        mountainView.addSubview(Login)
        
        //
        
        //let Submit = UIButton()
        submitButton.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.80, width: bounds.maxX, height: bounds.maxY * 0.1)
        submitButton.backgroundColor = UIColor.clear
        submitButton.setTitleColor(UIColor.black, for: .normal)
        submitButton.setTitle("Submit", for: .normal)
        submitButton.titleLabel?.font = UIFont(name: "Times New Roman", size: 20)
        self.addSubview(submitButton)
        
        //
        
        
        let emailAddress: UITextField = UITextField()
        emailAddress.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.45, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
        emailAddress.backgroundColor = UIColor.clear
        //emailAddress.text = "Email Address"
        emailAddress.textColor = UIColor.white
        //emailAddress.borderStyle = UITextBorderStyle(rawValue: 5)!
        emailAddress.layer.borderColor = UIColor.lightGray.cgColor
        emailAddress.layer.borderWidth = 1
        //emailAddress.titleLabel?.font = UIFont(name: "Times New Roman", size: 30)
        self.addSubview(emailAddress)
        
        //
        
        let emailLabel: UILabel = UILabel()
        emailLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.45, width: bounds.maxX * 0.35, height: bounds.maxY * 0.07)
        emailLabel.textColor = UIColor.white
        emailLabel.backgroundColor = UIColor.clear
        emailLabel.text = "Email Address"
        emailLabel.textColor = UIColor.white
        self.addSubview(emailLabel)
        
        
        //
        
        let Password: UITextField = UITextField()
        Password.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.55, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
        Password.backgroundColor = UIColor.clear
        //Password.text = //"Password"
        Password.textColor = UIColor.white
        Password.layer.borderColor = UIColor.lightGray.cgColor
        Password.layer.borderWidth = 1
        //Password.isUserInteractionEnabled = false
        self.addSubview(Password)
        
        
        
        
        //
        
        let passLabel: UILabel = UILabel()
        passLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.55, width: bounds.maxX * 0.35, height: bounds.maxY * 0.08)
        passLabel.textColor = UIColor.white
        passLabel.backgroundColor = UIColor.clear
        passLabel.text = "Password"
        passLabel.textColor = UIColor.white
        self.addSubview(passLabel)
        
        let backImage = UIImage(named: "back arrow.png")
        backButton.setTitle("back", for: .normal)
        backButton.setTitleColor(UIColor.green, for: .normal)
        backButton.setImage(backImage, for: .normal)
        backButton.frame = CGRect(x: 0, y: bounds.maxY * ratio, width: bounds.maxX * 0.08, height: bounds.maxX * 0.08)
        self.addSubview(backButton)
        
        //borders
        
        let TopBorder: UIView = UIView()
        TopBorder.backgroundColor = UIColor.black
        TopBorder.frame = CGRect(x: 0.0, y: rect.minY - 3.0, width: rect.width, height: 3.0)
        self.addSubview(TopBorder)
        
        let BottomBorder: UIView = UIView()
        BottomBorder.backgroundColor = UIColor.black
        BottomBorder.frame = CGRect(x: 0.0, y: rect.height * (1.0 - ratio) + rect.minY, width: bounds.width, height: 3.0)
        self.addSubview(BottomBorder)
    }
        
}
