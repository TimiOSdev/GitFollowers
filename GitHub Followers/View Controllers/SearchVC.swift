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
    
    var isUserNameEmpty : Bool {
        return !userNameTextField.text!.isEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        configureImageView()
        configureUserNameTextField()
        configureButton()
        createTapGestureReconizer()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    @objc func pushToFollowersViewController() {
        guard isUserNameEmpty else { return }
        let followersVC = FollowerListViewController()
        followersVC.userName = userNameTextField.text
        followersVC.title = userNameTextField.text
        navigationController?.pushViewController(followersVC, animated: true)
    }
    
    func createTapGestureReconizer() {
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
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
        userNameTextField.delegate = self
        NSLayoutConstraint.activate([
            userNameTextField.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 50),
            userNameTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            userNameTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            userNameTextField.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
    
    func configureButton() {
        view.addSubview(callToActionButton)
        callToActionButton.addTarget(self, action: #selector(pushToFollowersViewController), for: .touchUpInside)
        NSLayoutConstraint.activate([

            callToActionButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            callToActionButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

extension SearchVC: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard isUserNameEmpty else {
            return true
        }
        userNameTextField.resignFirstResponder()
        pushToFollowersViewController()
        return true
    }
}

