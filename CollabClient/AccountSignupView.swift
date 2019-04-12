//
//  CollabSignupView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class AccountSignupView: UIView {
    
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
    
    var submitButton: UIButton = UIButton()
    //layout
    
    
    override func layoutSubviews(){
        
        super.layoutSubviews()
        
        let ratio:CGFloat = 0.12
        var rect = bounds
        
        (headerView.frame, rect) = rect.divided(atDistance: rect.height * ratio , from: .minYEdge)
        (mountainView.frame, tabView.frame) = rect.divided(atDistance: rect.height * (1.0 - ratio), from: .minYEdge)
        
        //labels
        
        
        let SignUp = UIButton()
        SignUp.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.05, width: bounds.maxX * 0.4, height: bounds.maxY * 0.1)
        SignUp.backgroundColor = UIColor.clear
        SignUp.setTitleColor(UIColor.white, for: .normal)
        SignUp.setTitle("Sign Up", for: .normal)
        SignUp.titleLabel?.font = UIFont(name: "Times New Roman", size: 30)
        mountainView.addSubview(SignUp)
        
        //
        
        let firstName: UITextField = UITextField()
        firstName.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.5, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
        firstName.backgroundColor = UIColor.clear
        //Password.text = //"Password"
        firstName.textColor = UIColor.white
        firstName.layer.borderColor = UIColor.lightGray.cgColor
        firstName.layer.borderWidth = 1
        //Password.isUserInteractionEnabled = false
        self.addSubview(firstName)
        
        //
        
        let firstNameLabel: UILabel = UILabel()
        firstNameLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.5, width: bounds.maxX * 0.34, height: bounds.maxY * 0.08)
        firstNameLabel.textColor = UIColor.white
        firstNameLabel.backgroundColor = UIColor.clear
        firstNameLabel.text = "First Name"
        firstNameLabel.textColor = UIColor.white
        self.addSubview(firstNameLabel)
        
        //
        
        let lastName: UITextField = UITextField()
        lastName.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.6, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
        lastName.backgroundColor = UIColor.clear
        //Password.text = //"Password"
        lastName.textColor = UIColor.white
        lastName.layer.borderColor = UIColor.lightGray.cgColor
        lastName.layer.borderWidth = 1
        //Password.isUserInteractionEnabled = false
        self.addSubview(lastName)
        
        //
        
        let lastNameLabel: UILabel = UILabel()
        lastNameLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.6, width: bounds.maxX * 0.34, height: bounds.maxY * 0.08)
        lastNameLabel.textColor = UIColor.white
        lastNameLabel.backgroundColor = UIColor.clear
        lastNameLabel.text = "Last Name"
        lastNameLabel.textColor = UIColor.white
        self.addSubview(lastNameLabel)
        
        //
        

//        let Brand: UITextField = UITextField()
//        Brand.frame = CGRect(x: bounds.maxX * 0.15, y: bounds.maxY * 0.70, width: bounds.maxX * 0.7, height: bounds.maxY * 0.1)
//        Brand.backgroundColor = UIColor.clear
//        Brand.text = "Brand/Model/Photographer/Influencer"
//        Brand.textColor = UIColor.white
//        mountainView.addSubview(Brand)
        
//        let Login = UIButton()
//        Login.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.20, width: bounds.maxX * 0.3, height: bounds.maxY * 0.1)
//        Login.backgroundColor = UIColor.clear
//        Login.setTitleColor(UIColor.white, for: .normal)
//        Login.setTitle("Log In", for: .normal)
//        Login.titleLabel?.font = UIFont(name: "Times New Roman", size: 30)
//        mountainView.addSubview(Login)
        
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
        emailAddress.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.30, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
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
        emailLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.3, width: bounds.maxX * 0.34, height: bounds.maxY * 0.07)
        emailLabel.textColor = UIColor.white
        emailLabel.backgroundColor = UIColor.clear
        emailLabel.text = "Email Address"
        emailLabel.textColor = UIColor.white
        self.addSubview(emailLabel)
        
        
        //
        
        let Password: UITextField = UITextField()
        Password.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * 0.4, width: bounds.maxX * 0.64, height: bounds.maxY * 0.07)
        Password.backgroundColor = UIColor.clear
        //Password.text = //"Password"
        Password.textColor = UIColor.white
        Password.layer.borderColor = UIColor.lightGray.cgColor
        Password.layer.borderWidth = 1
        
        //Password.isUserInteractionEnabled = false
        self.addSubview(Password)
        
        //
        
        let passLabel: UILabel = UILabel()
        passLabel.frame = CGRect(x: bounds.minX, y: bounds.maxY * 0.4, width: bounds.maxX * 0.34, height: bounds.maxY * 0.08)
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

