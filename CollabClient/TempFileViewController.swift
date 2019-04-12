//
//  TempFileViewController.swift
//  CollabClient
//
//  Created by u1034691 on 4/8/19.
//  Copyright © 2019 u1034691. All rights reserved.
//

import UIKit

class TempFileViewController: UIViewController {
    override func loadView() {
        view = AboutGeneralView()
    }
    
    var initView: AboutGeneralView {
        return view as! AboutGeneralView
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
}
