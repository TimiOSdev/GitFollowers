//
//  GFTextfield.swift
//  GitHub Followers
//
//  Created by Tim McEwan on 10/18/22.
//

import UIKit

class GFTextfield: UITextField {
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    func configure() {
        layer.cornerRadius = 10
        layer.borderWidth = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        returnKeyType = .go
        textColor = .label
        tintColor = .label
        textAlignment = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        
        adjustsFontSizeToFitWidth = true
        minimumFontSize = 12
        backgroundColor = .tertiarySystemBackground
        translatesAutoresizingMaskIntoConstraints = false
        autocorrectionType = .no
        placeholder = "Enter Username"
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
