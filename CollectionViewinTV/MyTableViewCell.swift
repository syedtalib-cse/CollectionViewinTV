//
//  MyTableViewCell.swift
//  CollectionViewinTV
//
//  Created by Talib on 06/10/22.
//

import UIKit

class MyTableViewCell: UITableViewCell {
static let identifier = "cell"
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension MyTableViewCell:UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eData[myCollectionView.tag].imageGallery.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier:MyCollectionViewCell.idenfier, for:indexPath) as! MyCollectionViewCell
        cell.myImage.image = UIImage(named:eData[myCollectionView.tag].imageGallery[indexPath.row])
        return cell
    }
    
    
}
