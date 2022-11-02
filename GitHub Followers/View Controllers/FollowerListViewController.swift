//
//  FollowerListViewController.swift
//  GitHub Followers
//
//  Created by Tim McEwan on 11/1/22.
//

import UIKit

class FollowerListViewController: UIViewController {
    var userName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        view.backgroundColor = .systemBackground
        navigationController?.navigationBar.prefersLargeTitles = true
        // Do any additional setup after loading the view.
    }
}
