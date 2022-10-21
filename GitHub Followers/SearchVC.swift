//
//  SearchVC.swift
//  GitHub Followers
//
//  Created by Tim McEwan on 10/11/22.
//

import UIKit

class SearchVC: UIViewController {
    
    // initialize from top to bottom order
    let imageView = UIImageView()
    let userNameTextField = GFTextfield()
    let callToActionButton = GFButton(backgroundColor: .systemGreen, title: "Get Followers")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureImageView()
        configureUserNameTextField()
        configureButton()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    func configureImageView() {
        view.addSubview(imageView)
        imageView.image = UIImage(named: "gh-logo")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        // Constraints
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            imageView.widthAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    func configureUserNameTextField() {
        view.addSubview(userNameTextField)
        
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            userNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            userNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func configureButton() {
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([

            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
