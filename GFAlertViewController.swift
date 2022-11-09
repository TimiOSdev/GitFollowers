//
//  GFAlertViewController.swift
//  GitHub Followers
//
//  Created by Tim McEwan on 11/8/22.
//

import UIKit

class GFAlertViewController: UIViewController {
    
    let containerView = UIView()
    let titleText = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let bodyText = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "Ok")

    var alertTitle: String?
    var bodyAlert: String?
    var buttonTitle: String?
    
    init(title: String, body: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.bodyAlert = body
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(displayP3Red: 0, green: 0, blue: 0, alpha: 0.75)
        // Do any additional setup after loading the view.
    }
}
