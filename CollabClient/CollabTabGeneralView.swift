//
//  TabGeneralView.swift
//  CollabClient
//
//  Created by u1034691 on 3/17/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class CollabTabGeneralView: UIView {
    

    var innerView: UIView = UIView()
    
    var accountView: CollabTabView = CollabTabView()
    
   var ProfileView: CollabTabView = CollabTabView()
    
    var SearchView: CollabTabView = CollabTabView()
    
    var AboutView: CollabTabView = CollabTabView()
    
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
 
        innerView.backgroundColor = UIColor.lightGray
        self.addSubview(innerView)

            accountView.backgroundColor = UIColor.blue
            self.addSubview(accountView)
            ProfileView.backgroundColor = UIColor.orange
            self.addSubview(ProfileView)

            SearchView.backgroundColor = .black
            self.addSubview(SearchView)
        
        
            AboutView.backgroundColor = .orange
            
            self.addSubview(AboutView)

        
        var rect = bounds
        innerView.frame = rect
        
        let viewSize = rect.width * 0.24
        let bufferSize = rect.width * 0.01
        
        rect = rect.insetBy(dx: 1.0, dy: 0.0)
        (accountView.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        (ProfileView.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        (SearchView.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        AboutView.frame = rect

        //bound the top 20% of screen to be a headerview

    }
    
    
    
}
