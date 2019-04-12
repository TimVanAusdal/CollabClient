//
//  HomeViewController.swift
//  CollabClient
//
//  Created by u1034691 on 4/1/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    override func loadView() {
        view = HomeView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //let tableViewController: UITableViewController
        
        homeView.label.text = "HelloWrld!"
        homeView.button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        //        (view as! HomeView).label.text = "Hello world"
        //        //click
        //        (view as! HomeView).button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        //view = UILabel()
    }
    
    //computed property
    
    var homeView: HomeView {
        return view as! HomeView
    }
    @objc func backButtonPressed() {
        print("pressed")
        
        let someOtherViewController = AccountInitialViewController()
        someOtherViewController.view.backgroundColor = UIColor.blue
        someOtherViewController.view.frame = CGRect(x: 0.0, y: view.frame.minY, width: view.frame.width, height: view.frame.height * 0.5)
        
        present(someOtherViewController, animated: true, completion: nil)
    }
    
    
    
}
