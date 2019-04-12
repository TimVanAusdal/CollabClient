//
//  AppController.swift
//  CollabClient
//
//  Created by u1034691 on 4/9/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class AppController: UIViewController{
    
    
    
    let user = CollabUser()
    
    lazy var acInitialViewController: AccountInitialViewController = {
        let controller = AccountInitialViewController()
        //controller.initView.Login.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        return controller
    }()
    
    lazy var acLoginViewController: AccountLoginViewController = {
        let controller = AccountLoginViewController()
        return controller
    }()
    
    lazy var acSignupViewController: AccountSignUpViewController = {
        let controller = AccountSignUpViewController()
        return controller
    }()
    lazy var acCustomizerViewController: AccountCustomizerViewController = {
        let controller = AccountCustomizerViewController()
        return controller
    }()
    lazy var proGeneralViewController: ProfileGeneralViewController = {
        let controller = ProfileGeneralViewController()
        return controller
    }()
    lazy var searchGeneralViewController: SearchGeneralViewController = {
        let controller = SearchGeneralViewController()
        return controller
    }()
    lazy var abGeneralViewController: AboutGeneralViewController = {
        let controller = AboutGeneralViewController()
        return controller
    }()
    
    override func loadView() {
        view = HomeView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        homeView.label.text = "HelloWrld!"
        homeView.button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
    }
    
    //computed property
    
    var homeView: HomeView {
        return view as! HomeView
    }
    @objc func backButtonPressed() {
        print("pressed ac init")

        present(acInitialViewController, animated: true, completion: nil)
    }
    
    @objc func loginButtonPressed() {
        
    }

}
