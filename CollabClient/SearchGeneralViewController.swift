//
//  SearchGeneralViewController.swift
//  CollabClient
//
//  Created by u1034691 on 4/1/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class SearchGeneralViewController: UIViewController {
    
    
    override func loadView() {
        view = SearchGeneralView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        initView.tabView.accountView.button.addTarget(self, action: #selector(AccountTabPressed), for: .touchUpInside)
        initView.tabView.ProfileView.button.addTarget(self, action: #selector(ProfileTabPressed), for: .touchUpInside)
        initView.tabView.SearchView.button.addTarget(self, action: #selector(SearchTabPressed), for: .touchUpInside)
        initView.tabView.AboutView.button.addTarget(self, action: #selector(AboutTabPressed), for: .touchUpInside)
    }
    
    @objc func AccountTabPressed() {
        let accViewController = AccountInitialViewController()
        present(accViewController, animated: true, completion: nil)
    }
    @objc func ProfileTabPressed() {
        let profViewController = ProfileGeneralViewController()
        present(profViewController, animated: true, completion: nil)
    }
    @objc func SearchTabPressed() {
        let searchViewController = SearchGeneralViewController()
        present(searchViewController, animated: true, completion: nil)
    }
    @objc func AboutTabPressed() {
        let aboutViewController = AboutGeneralViewController()
        present(aboutViewController, animated: true, completion: nil)
    }
    
    var initView: SearchGeneralView {
        return view as! SearchGeneralView
    }
    
    @objc func loginButtonPressed() {
        print("pressed")
        
        
        let someOtherViewController = AccountLoginViewController()
        //someOtherViewController.view.backgroundColor = UIColor.black
        
        present(someOtherViewController, animated: true, completion: nil)
    }
    
    @objc func signUpButtonPressed() {
        print("pressed")
        
        
        let someOtherViewController = AccountSignUpViewController()
        someOtherViewController.view.backgroundColor = UIColor.black
        
        present(someOtherViewController, animated: true, completion: nil)
    }
    
    
}
