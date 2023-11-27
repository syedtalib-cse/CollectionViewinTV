//
//  ViewController.swift
//  CollectionViewinTV
//
//  Created by Talib on 06/10/22.
//

import UIKit
var eData = [EntertaimentApp(sectionType:"Bollywood Movies", imageGallery:["download (1)","download (2)","download (3)","download"]),EntertaimentApp(sectionType:"Punjabi Movies", imageGallery:["download (1)","download (2)","download (3)","download"]),EntertaimentApp(sectionType:"Kanada Movies", imageGallery:["download (1)","download (2)","download (3)","download"])]
class ViewController: UIViewController {
    @IBOutlet weak var myTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}



extension ViewController:UITableViewDelegate,UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return eData.count
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:MyTableViewCell.identifier, for:indexPath) as! MyTableViewCell
        cell.myCollectionView.tag = indexPath.section
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return eData[section].sectionType
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        view.tintColor = .yellow
    }
    
    
}
