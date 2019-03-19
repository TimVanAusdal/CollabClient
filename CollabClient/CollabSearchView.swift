//
//  CollabSearchView.swift
//  CollabClient
//
//  Created by u1034691 on 3/18/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class CollabSearchView: UIView {
    
    
    lazy var searchView: UIView = {
        let view: UIView = UIView()
        view.backgroundColor = UIColor.white
        
        
        
        self.addSubview(view)
        return view
    }()
    lazy var innerView: UIView = {
        let view = UIView()
        view.backgroundColor = .black
        
        //let button: UIButton = UIButton()
        
        
        self.addSubview(view)
        
        return view
    }()
    
    lazy var view1: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        
        
        
        self.addSubview(view)
        return view
    }()
    
    lazy var view2: UIButton = {
        let view = UIButton()
        
        view.backgroundColor = .white
        //let im = UIImage(named: "collab payment info.PNG")
        
        self.addSubview(view)
        return view
    }()
    
    lazy var view3: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        self.addSubview(view)
        return view
    }()
    
    lazy var view4: UIButton = {
        let view = UIButton()
        view.backgroundColor = .white
        
        //view.button.add
        self.addSubview(view)
        return view
    }()
    
    
    
    override func layoutSubviews(){
        super.layoutSubviews()
        
        var rect = bounds
        innerView.frame = rect
        
        let viewSize = rect.height * 0.197
        let bufferSize = rect.height * 0.003
        
        //rect = rect.insetBy(dx: 1.0, dy: 0.0)
        (searchView.frame, rect) = rect.divided(atDistance: viewSize, from: .minYEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minYEdge)
        (view1.frame, rect) = rect.divided(atDistance: viewSize, from: .minYEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minYEdge)
        (view2.frame, rect) = rect.divided(atDistance: viewSize, from: .minYEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minYEdge)
        (view3.frame, rect) = rect.divided(atDistance: viewSize, from: .minYEdge)
        (_, rect) = rect.divided(atDistance: bufferSize, from: .minYEdge)
        view4.frame = rect
        
        //
        let view = searchView
        
        let text: UITextField = UITextField()
        text.backgroundColor = UIColor.orange
        let bounds2 = view.frame
        text.frame = CGRect(x: bounds2.maxX * 0.1, y: bounds2.maxY * 0.3, width: bounds2.width * 0.65, height: bounds2.maxY * 0.4)
        //text.frame = CGRect(x: 5.0, y: 5.0, width: 30.0, height: 20.0)
        text.isUserInteractionEnabled = true
        text.text = "h"
        
        view.addSubview(text)
        
        //
        
        let searchButton: UIButton = UIButton()
        let searchImage = UIImage(named: "Nyan.png")
        searchButton.setBackgroundImage(searchImage, for: .normal)
        searchButton.frame = CGRect(x: bounds2.maxX * 0.80, y: bounds2.maxY * 0.3, width: bounds2.width * 0.15, height: bounds2.maxY * 0.4)
        view.addSubview(searchButton)
        
        //
        
        view1.setTitleColor(UIColor.black, for: .normal)
        view1.setTitle("model", for: .normal)
        
        //
        
        view2.setTitleColor(UIColor.black, for: .normal)
        view2.setTitle("Brand", for: .normal)
        
        //
        
        view3.setTitleColor(UIColor.black, for: .normal)
        view3.setTitle("Influencer", for: .normal)
        
        //
        
        view4.setTitleColor(UIColor.black, for: .normal)
        view4.setTitle("Photographer", for: .normal)
        
        //
        
        //bound the top 20% of screen to be a headerview
        //(bottomView.frame, rect) = rect.divided(atDistance: bounds.height * ratio.1 , from: .maxYEdge)
    }
}
