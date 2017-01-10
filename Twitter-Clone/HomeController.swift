//
//  HomeController.swift
//  Twitter-Clone
//
//  Created by Mario Hernandez on 1/10/17.
//  Copyright © 2017 Mario Hernandez. All rights reserved.
//

import UIKit


class wordCell: UICollectionViewCell {
    
    let wordLabel: UILabel = {
        let l = UILabel()
        l.text = "Hello world"
        l.translatesAutoresizingMaskIntoConstraints = false
        return l
    }()
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    func setUpView() {
        backgroundColor = .yellow
        self.addSubview(wordLabel)
        constrainWordLabel()
        
        
    }
    func constrainWordLabel(){
        wordLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        wordLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        wordLabel.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        wordLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

class HomeController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    let cellID = "cellID"
    let dataForCells = ["Hello", "my", "name", "is","Mario","Hernandez"]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor.blue
        collectionView?.register(wordCell.self, forCellWithReuseIdentifier: cellID)
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataForCells.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let curCell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        
        
        return curCell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    
}
