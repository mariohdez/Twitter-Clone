//
//  UserCell.swift
//  Twitter-Clone
//
//  Created by Mario Hernandez on 1/11/17.
//  Copyright © 2017 Mario Hernandez. All rights reserved.
//

import Foundation
import LBTAComponents


class UserCell: DatasourceCell {
    
    
    override var datasourceItem: Any?{
        didSet{
            
            guard let curUsr = datasourceItem as? User else {
                return
            }
            
            nameLabel.text = curUsr.name
            usernameLabel.text = curUsr.username
            bioTextView.text = curUsr.bioText
            profileImageView.image = curUsr.profilePicture
        }
    }
    
    let nameLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.boldSystemFont(ofSize: 16)
        l.text = "Mario Hernandez"
        return l
    }()
    let profileImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "profile_picture"))
        imageView.backgroundColor = UIColor.red
        imageView.layer.cornerRadius = 5.0
        imageView.layer.masksToBounds = true
        
        return imageView
    }()
    
    let usernameLabel: UILabel = {
        let l = UILabel()
        l.font = UIFont.systemFont(ofSize: 14)
        l.layer.masksToBounds = true
        l.textColor = UIColor(r: 124, g: 131, b: 139)
        l.text = "@mariohernandez"
        return l
    }()
    
    let bioTextView: UITextView = {
        let txtView = UITextView()
        txtView.font = UIFont.systemFont(ofSize: 15)
        txtView.layer.masksToBounds = true
        
        txtView.backgroundColor = .clear
        txtView.isEditable = false
        
        
        txtView.text = "Aspiring iOS developer. Likes -- Computer Science, Mathematics, Savagery, Top Dawg Ent, & Hip Hop"
        
        return txtView
    }()
    
    let followButton: UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterColor.cgColor
        button.layer.borderWidth = 1
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setImage(#imageLiteral(resourceName: "follow"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFit
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -8, bottom: 0, right: 0)
        button.setTitleColor(twitterColor, for: .normal)
        button.layer.masksToBounds = true
        button.setTitle("Follow", for: .normal)
        return button
        
    }()
    
    
    
    override func setupViews() {
        super.setupViews()
        addSubViews()
        addConstraints()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
    }
    
    func addSubViews() {
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
    }
    
    func addConstraints() {
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: -6, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
        followButton.anchor(self.topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
    }
}
