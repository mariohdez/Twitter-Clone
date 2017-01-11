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
    let words = ["user1", "user2","user3"]
    
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
        return words.count
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
}
