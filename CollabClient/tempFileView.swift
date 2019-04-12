//
//  tempFileView.swift
//  CollabClient
//
//  Created by u1034691 on 4/8/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class tempFileView: UIView {
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        
        let ratio:CGFloat = 0.12
        var rect = bounds
        
        self.addSubview(tabView)
        mainView.backgroundColor = UIColor.purple
        self.addSubview(mainView)
        (headerView.frame, rect) = rect.divided(atDistance: rect.height * ratio , from: .minYEdge)
        (mainView.frame, tabView.frame) = rect.divided(atDistance: rect.height * (1.0 - ratio), from: .minYEdge)
        
        let TopBorder: UIView = UIView()
        TopBorder.backgroundColor = UIColor.black
        TopBorder.frame = CGRect(x: 0.0, y: rect.minY - 3.0, width: rect.width, height: 3.0)
        self.addSubview(TopBorder)
        
        let BottomBorder: UIView = UIView()
        BottomBorder.backgroundColor = UIColor.black
        BottomBorder.frame = CGRect(x: 0.0, y: rect.height * (1.0 - ratio) + rect.minY, width: bounds.width, height: 3.0)
        self.addSubview(BottomBorder)
    }
    
    var tabView: CollabTabGeneralView = CollabTabGeneralView()
    
    //top image with word collab and profile
    lazy var headerView: UIView = {
        let view = self
        let logoImage = UIImage(named: "top part.PNG")
        let logoView = UIImageView(image: logoImage)
        
        self.addSubview(logoView)
        return logoView
    }()
    
    var mainView: UIView = UIView()
    
}
