//
//  HomeDataSourceController.swift
//  Twitter-Clone
//
//  Created by Mario Hernandez on 1/10/17.
//  Copyright © 2017 Mario Hernandez. All rights reserved.
//

import Foundation
import LBTAComponents

class HomeDataSourceController: DatasourceController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeDataSource = HomeDataSource()
        self.datasource = homeDataSource
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 150)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50.0)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50.0)
        
    }
}
