//
//  AccountInitialViewController.swift
//  CollabClient
//
//  Created by u1034691 on 3/24/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

//protocol updateInfo {
//    func updateLoginPressed()
//}
class AccountInitialViewController: UIViewController {
    
    //var updateInfo: updateInfo?
    override func loadView() {
        view = AccountInitialView()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        //initView.tabView.ProfileView.button.addTarget(self, action, )

        initView.Login.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        initView.SignUp.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
        
        
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
    
    
    var initView: AccountInitialView {
        return view as! AccountInitialView
    }
    
    
    
    @objc func loginButtonPressed() {
        print("pressed login")

        let someOtherViewController = AccountLoginViewController()
        
        
        present(someOtherViewController, animated: true, completion: nil)
    }
    
    @objc func signUpButtonPressed() {
        print("pressed sign up")
        let someOtherViewController = AccountSignUpViewController()
        someOtherViewController.view.backgroundColor = UIColor.black
        
        present(someOtherViewController, animated: true, completion: nil)
    }
 
}
