//
//  AppView.swift
//  CollabClient
//
//  Created by u1034691 on 3/17/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import Foundation

import UIKit

class AppView: UIView {
    /*
    //let headerView: UIView = UIView()
    
    lazy var headerView: UIView = {
        let view = UIView()
        view.backgroundColor = .red
        self.addSubview(view)
        return view
    }()
    
    //initialize the var as soon as it's called
    lazy var left: LeftView = {
        let view = LeftView()
        view.backgroundColor = .green
        self.addSubview(view)
        return view
    }()
    
    lazy var right: RightView = {
        let view = RightView()
        view.backgroundColor = .blue
        self.addSubview(view)
        return view
    }()
    
    //whenever you have something that inherits from NSObject you need to have a function that acts as a decoder.
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //left = UIView()
        //headerView.backgroundColor = .red
        //addSubview(headerView)
    }
    
    required init? (coder aCoder: NSCoder){
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews(){
        super.layoutSubviews()
        
        var rect = bounds
        //bound the top 20% of screen to be a headerview
        (headerView.frame, rect) = rect.divided(atDistance: bounds.height * 0.2 , from: .minYEdge)
        (left.frame, right.frame) = rect.divided(atDistance: bounds.width * 0.5, from: .minXEdge)
    }
    */
}
