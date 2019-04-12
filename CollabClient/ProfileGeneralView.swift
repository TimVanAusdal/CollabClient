//
//  ProfileGeneralView.swift
//  CollabClient
//
//  Created by u1034691 on 4/7/19.
//  Copyright © 2019 u1034691. All rights reserved.
//


import UIKit

class ProfileGeneralView: UIView {
    
    //View To switch tabs with
    var tabView: CollabTabGeneralView = CollabTabGeneralView()
    
    var profilePic1: UIButton = UIButton()
    var profilePic2: UIButton = UIButton()
    var profilePic3: UIButton = UIButton()
    
    lazy var innerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        
        
        self.addSubview(view)
    
        
        return view
    }()
    
    lazy var headerView: UIView = {
        let view = self
        let logoImage = UIImage(named: "top part.PNG")
        let logoView = UIImageView(image: logoImage)
        
        self.addSubview(logoView)
        return logoView
    }()
    
    var nameLabel: UITextField = UITextField()
    var updateName: UIButton = UIButton()
    var brandLabel: UITextField = UITextField()
    var descriptionLabel: UITextView = UITextView()
    var emailField: UITextField = UITextField()
    var fbButton: UIButton = UIButton()
    var twitterButton: UIButton = UIButton()
    var instagramButton: UIButton = UIButton()
    var updateButton: UIButton = UIButton()
    
    var closeNotification: UIButton = UIButton()
    var fbView: UITextField  = UITextField()
    var instaView: UITextField = UITextField()
    var twitterView: UITextField = UITextField()
    
    private let ratio:CGFloat = 0.12
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.addSubview(profilePic1)
        
        var rect = bounds
        
        self.addSubview(tabView)

        (headerView.frame, rect) = rect.divided(atDistance: rect.height * ratio , from: .minYEdge)
        (innerView.frame, tabView.frame) = rect.divided(atDistance: rect.height * (1.0 - ratio), from: .minYEdge)

        profilePic1.backgroundColor = UIColor.black
        profilePic1.frame = CGRect(x: bounds.maxX * 0.04, y: bounds.maxY * (1.0 - ratio) * 0.2, width: bounds.maxX * 0.28 * (1.0-ratio), height: bounds.maxX * 0.28 * (1.0-ratio))
        profilePic1.layer.cornerRadius = profilePic1.frame.size.width/2
        profilePic1.clipsToBounds = true
        profilePic1.layer.borderColor = UIColor.orange.cgColor
        profilePic1.layer.borderWidth = 1.0
        //
        
        profilePic2.backgroundColor = UIColor.purple
        profilePic2.frame = CGRect(x: bounds.maxX * 0.36, y: bounds.maxY * (1.0 - ratio) * 0.2, width: bounds.maxX * 0.28 * (1.0-ratio), height: bounds.maxX * 0.28 * (1.0-ratio))
        profilePic2.layer.cornerRadius = profilePic1.frame.size.width/2
        profilePic2.clipsToBounds = true
        profilePic2.layer.borderColor = UIColor.orange.cgColor
        profilePic2.layer.borderWidth = 1.0
        self.addSubview(profilePic2)
        
        //
        
        profilePic3.backgroundColor = UIColor.red
        profilePic3.frame = CGRect(x: bounds.maxX * 0.68, y: bounds.maxY * (1.0 - ratio) * 0.2, width: bounds.maxX * 0.28 * (1.0-ratio), height: bounds.maxX * 0.28 * (1.0-ratio))
        profilePic3.layer.cornerRadius = profilePic1.frame.size.width/2
        profilePic3.clipsToBounds = true
        profilePic3.layer.borderColor = UIColor.orange.cgColor
        profilePic3.layer.borderWidth = 1.0
        self.addSubview(profilePic3)
        //
        
        let profileLabel: UILabel = UILabel()
        profileLabel.text = "Profile"
        profileLabel.textColor = UIColor.black
        profileLabel.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * (1.0 - ratio) * 0.15, width: bounds.maxX * 0.25 * (1.0-ratio), height: bounds.maxX * 0.05)
        self.addSubview(profileLabel)
    
        //
        
        initTextFields()
        
        //
        
        initMediaButtons()
        
        initInvisibleFields()
        
        
        
        //profilePic.bounds = bounds
        
        let TopBorder: UIView = UIView()
        TopBorder.backgroundColor = UIColor.black
        TopBorder.frame = CGRect(x: 0.0, y: rect.minY - 3.0, width: rect.width, height: 3.0)
        self.addSubview(TopBorder)
        
        let BottomBorder: UIView = UIView()
        BottomBorder.backgroundColor = UIColor.black
        BottomBorder.frame = CGRect(x: 0.0, y: rect.height * (1.0 - ratio) + rect.minY, width: bounds.width, height: 3.0)
        self.addSubview(BottomBorder)

    }
    
    func initTextFields() {
        let brandWord: UILabel = UILabel()
        brandWord.backgroundColor = UIColor.clear
        brandWord.frame = CGRect(x: frame.maxX * 0.1, y: frame.maxY * 0.60 * (1.0-ratio), width: frame.maxX * 0.2, height: frame.maxY * 0.05)
        brandWord.textColor = UIColor.black
        brandWord.text = "brand"
        self.addSubview(brandWord)
        
        //
        
        brandLabel.backgroundColor = UIColor.clear
        brandLabel.textColor? = UIColor.black
        brandLabel.frame = CGRect(x: frame.maxX * 0.3, y: frame.maxY * 0.60 * (1.0-ratio), width: frame.maxX * 0.6, height: frame.maxY * 0.05)
        //nameLabel.text = "hello world"
        brandLabel.layer.borderColor = UIColor.black.cgColor
        brandLabel.layer.borderWidth = 1.0
        //brandLabel.
        self.addSubview(brandLabel)
        
        //
        
        let descriptionWord: UILabel = UILabel()
        descriptionWord.backgroundColor = UIColor.clear
        descriptionWord.frame = CGRect(x: frame.maxX * 0.01, y: frame.maxY * 0.50 * (1.0-ratio), width: frame.maxX * 0.29, height: frame.maxY * 0.05)
        descriptionWord.text = "description"
        descriptionWord.textColor = UIColor.black
        self.addSubview(descriptionWord)
        
        //
        
        descriptionLabel.backgroundColor = UIColor.clear
        descriptionLabel.textColor? = UIColor.black
        descriptionLabel.frame = CGRect(x: frame.maxX * 0.3, y: frame.maxY * 0.47 * (1.0-ratio), width: frame.maxX * 0.69, height: frame.maxY * 0.11)
        descriptionLabel.text = ""
        //nameLabel.text = "hello world"
        descriptionLabel.layer.borderColor = UIColor.black.cgColor
        descriptionLabel.layer.borderWidth = 1.0
        descriptionLabel.isEditable = true
        self.addSubview(descriptionLabel)
        
        //
        
        //        let nameWord: UILabel = UILabel()
        //        nameWord.textColor = UIColor.black
        //        nameWord.backgroundColor = UIColor.clear
        //        nameWord.text = "name"
        updateName.setTitle("name", for: .normal)
        updateName.backgroundColor = UIColor.clear
        updateName.setTitleColor(UIColor.black, for: .normal)
        //updateName.titleLabel = nameWord
        updateName.frame = CGRect(x: frame.minX, y: frame.maxY * 0.40 * (1.0-ratio), width: frame.maxX * 0.35, height: frame.maxY * 0.05)
        self.addSubview(updateName)
        
        //
        
        nameLabel.backgroundColor = UIColor.clear
        nameLabel.textColor? = UIColor.black
        nameLabel.frame = CGRect(x: frame.maxX * 0.3, y: frame.maxY * 0.40 * (1.0-ratio), width: frame.maxX * 0.6, height: frame.maxY * 0.05)
        //nameLabel.text = "hello world"
        nameLabel.layer.borderColor = UIColor.black.cgColor
        nameLabel.layer.borderWidth = 1.0
        self.addSubview(nameLabel)
        
        //
        
        let emailLabel: UILabel = UILabel()
        emailLabel.backgroundColor = UIColor.clear
        emailLabel.text = "email"
        emailLabel.textColor = UIColor.black
        emailLabel.frame = CGRect(x: frame.maxX * 0.1, y: frame.maxY * 0.70 * (1.0-ratio), width: frame.maxX * 0.2, height: frame.maxY * 0.05)
        self.addSubview(emailLabel)
        
        //
        
        emailField.backgroundColor = UIColor.clear
        emailField.textColor = UIColor.black
        emailField.layer.borderColor = UIColor.black.cgColor
        emailField.layer.borderWidth = 1
        emailField.frame = CGRect(x: frame.maxX * 0.3, y: frame.maxY * 0.70 * (1.0-ratio), width: frame.maxX * 0.6, height: frame.maxY * 0.05)
        self.addSubview(emailField)
    }
    
    func initMediaButtons(){
        let instaImage: UIImage = UIImage(named: "instagram logo.jpeg")!
        instagramButton.setImage(instaImage, for: .normal)
        instagramButton.frame = CGRect(x: bounds.maxX * 0.42, y: bounds.maxY * (1.0 - ratio) * 0.85, width: bounds.maxX * 0.16, height: bounds.maxX * 0.15)
        self.addSubview(instagramButton)
        
        //
        
        let twitterImage: UIImage = UIImage(named: "twitter logo.jpg")!
        twitterButton.setImage(twitterImage, for: .normal)
        twitterButton.frame = CGRect(x: bounds.maxX * 0.65, y: bounds.maxY * (1.0 - ratio) * 0.85, width: bounds.maxX * 0.15, height: bounds.maxX * 0.15)
        self.addSubview(twitterButton)
        
        //
        
        updateButton.backgroundColor = UIColor.clear
        updateButton.setTitle("update", for: .normal)
        updateButton.setTitleColor(UIColor.black, for: .normal)
        updateButton.frame = CGRect(x: bounds.maxX * 0.35, y: bounds.maxY * (1.0 - ratio) * 0.75, width: bounds.maxX * 0.3, height: bounds.maxY * 0.1)
        self.addSubview(updateButton)
        
        //
        
        self.addSubview(tabView)
        
        let fbImage: UIImage = UIImage(named: "facebook.png")!
        fbButton.setImage(fbImage, for: .normal)
        fbButton.frame = CGRect(x: bounds.maxX * 0.20, y: bounds.maxY * (1.0 - ratio) * 0.85, width: bounds.maxX * 0.15, height: bounds.maxX * 0.15)
        self.addSubview(fbButton)
    }
    
    func initInvisibleFields() {
        fbView.text = "get fbView text"
        fbView.textColor = UIColor.white
        fbView.backgroundColor = UIColor.blue
        fbView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.addSubview(fbView)
        
        instaView.text = "get instaView text"
        instaView.textColor = UIColor.white
        instaView.backgroundColor = UIColor.red
        instaView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.addSubview(instaView)
        
        twitterView.text = "get twitter text"
        twitterView.textColor = UIColor.white
        twitterView.backgroundColor = UIColor.green
        twitterView.frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        self.addSubview(twitterView)
        
        closeNotification.setTitle("tap to close", for: .normal)
        closeNotification.setTitleColor(UIColor.white, for: .normal)
        closeNotification.backgroundColor = UIColor.lightGray
        closeNotification.frame = CGRect(x: 0, y: 0, width: 100, height: 0)
        self.addSubview(closeNotification)
    }
    
    func showFBB(){
        fbView.frame = CGRect(x: bounds.minX, y: bounds.midX, width: bounds.width, height: bounds.height * 0.25)
        closeNotification.frame = CGRect(x: bounds.maxX * 0.3, y: bounds.maxY * 0.25, width: bounds.maxX * 0.4, height: bounds.height * 0.1)
    }
    
    func showTwit(){
        twitterView.frame = CGRect(x: bounds.minX, y: bounds.midX, width: bounds.width, height: bounds.height * 0.25)
        closeNotification.frame = CGRect(x: bounds.maxX * 0.3, y: bounds.maxY * 0.25, width: bounds.maxX * 0.4, height: bounds.height * 0.1)
    }
    
    func showInsta(){
        instaView.frame = CGRect(x: bounds.minX, y: bounds.midX, width: bounds.width, height: bounds.height * 0.25)
        closeNotification.frame = CGRect(x: bounds.maxX * 0.3, y: bounds.maxY * 0.25, width: bounds.maxX * 0.4, height: bounds.height * 0.1)
    }
}

