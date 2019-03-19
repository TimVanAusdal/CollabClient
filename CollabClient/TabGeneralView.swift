//
//  TabGeneralView.swift
//  CollabClient
//
//  Created by u1034691 on 3/17/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class TabGeneralView: UIView {
    
    //let heights = (topLogo: 0.0, botLogo: self.frame.height * 0.15, bot: self.frame.height)
    
    //et ratio:(CGFloat, CGFloat) = (top: 0.12, bot: 0.08)
    //let newMax: CGFloat = (CGFloat(self.bounds.maxYEdge) * CGFloat(0.92))
    
    
    lazy var innerView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        
        //let button: UIButton = UIButton()
        
        
        self.addSubview(view)
        
        return view
    }()
    
    lazy var view1: tabView = {
        let view = tabView()
        view.backgroundColor = .purple
        
        
        
        self.addSubview(view)
        return view
    }()
    
    lazy var view2: tabView = {
        let view = tabView()
        
        view.backgroundColor = .yellow
        //let im = UIImage(named: "collab payment info.PNG")
        
        self.addSubview(view)
        return view
    }()
    
    lazy var view3: tabView = {
        let view = tabView()
        view.backgroundColor = .black
        self.addSubview(view)
        return view
    }()
    
    lazy var view4: tabView = {
        let view = tabView()
        view.backgroundColor = .orange
        
        //view.button.add
        self.addSubview(view)
        return view
    }()
    
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
        
        var rect = bounds
        innerView.frame = rect
        
        let viewSize = rect.width * 0.24
        let bufferSize = rect.width * 0.01
        
        rect = rect.insetBy(dx: 1.0, dy: 0.0)
        (view1.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        (view2.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        (view3.frame, rect) = rect.divided(atDistance: viewSize, from: .minXEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minXEdge)
        view4.frame = rect
        
        
        
        //bound the top 20% of screen to be a headerview
        //(bottomView.frame, rect) = rect.divided(atDistance: bounds.height * ratio.1 , from: .maxYEdge)
    }
    
}
