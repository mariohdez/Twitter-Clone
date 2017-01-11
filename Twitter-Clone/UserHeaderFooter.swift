//
//  Cells.swift
//  Twitter-Clone
//
//  Created by Mario Hernandez on 1/10/17.
//  Copyright © 2017 Mario Hernandez. All rights reserved.
//

import Foundation
import LBTAComponents

let twitterColor = UIColor(r:61, g: 167, b: 244)


class UserHeaderCell: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Who to Follow"
        label.text = (label.text)?.uppercased()
        label.font = UIFont.systemFont(ofSize: 16)
        
        return label
    }()
    
    
    override func setupViews() {
        super.setupViews()
        
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        
        
        addSubview(textLabel)
        
        textLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
        
    }
}

class UserFooterCell: DatasourceCell {
    
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterColor
        
        return label
    }()
    
    
    
    
    override func setupViews() {
        super.setupViews()
        separatorLineView.isHidden = false
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)

        addSubview(textLabel)
        
textLabel.anchor(self.topAnchor, left: self.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        
    }
}


