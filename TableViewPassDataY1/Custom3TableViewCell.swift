//
//  Custom3TableViewCell.swift
//  TableViewPassDataY1
//
//  Created by Jakkawad Chaiplee on 10/3/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class Custom3TableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    var dataArray = [String]()
    
    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as! Custom3CollectionViewCell
        cell0.tag = indexPath.row
        cell0.lblAnimal.text = dataArray[indexPath.row]
        return cell0
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
