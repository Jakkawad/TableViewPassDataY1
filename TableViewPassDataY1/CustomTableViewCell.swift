//
//  CustomTableViewCell.swift
//  TableViewPassDataY1
//
//  Created by Jakkawad Chaiplee on 10/3/2559 BE.
//  Copyright © 2559 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell, UICollectionViewDataSource, UICollectionViewDelegate {

    var dataArray = [String]()

    @IBOutlet weak var collectionView:UICollectionView!
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell0 = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell0", for: indexPath) as! CustomCollectionViewCell
        cell0.tag = indexPath.row
        cell0.lblAnimal.text = dataArray[indexPath.row]
        print("Tag: \(cell0.tag)")
        return cell0
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("DataArray: \(dataArray[indexPath.row])")
        let dataIndex = dataArray[indexPath.row]
        print(dataIndex)

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
