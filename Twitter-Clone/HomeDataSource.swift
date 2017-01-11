//
//  HomeDataSource.swift
//  Twitter-Clone
//
//  Created by Mario Hernandez on 1/10/17.
//  Copyright © 2017 Mario Hernandez. All rights reserved.
//

import Foundation
import LBTAComponents

class HomeDataSource: Datasource {
    
    let users: [User] = {
        let mario = User(name: "Mario Hernandez", username: "@mariohernandez", bioText: "Aspiring iOS developer. Likes -- Computer Science, Mathematics, Savagery, Top Dawg Ent, & Hip Hop", profilePicture: #imageLiteral(resourceName: "profile_picture"))
        let testUsr = User(name: "Test User", username: "@testUsr", bioText: "I am some bio with some nonsense", profilePicture: #imageLiteral(resourceName: "egg_profile_pic"))
        
        return [mario,testUsr]
    }()
    

//    let words = ["user1", "user2","user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeaderCell.self]
    }
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooterCell.self]
    }
    
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    
    override func numberOfItems(_ section: Int) -> Int {
        return users.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
}
