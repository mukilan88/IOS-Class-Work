//
//  CVCon1.swift
//  Table
//
//  Created by AruniOS on 01/11/18.
//  Copyright © 2018 Class. All rights reserved.
//

import UIKit

class CVCon1: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    struct Tmode {
        
    var UImg : UIImage?
    }

    var temp : String?
    
    var tablelist : [Tmode]=[]
    
    @IBOutlet var Main: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(">>>>>>>>>>>>>>>  ",temp)
        
        tablelist.append(Tmode.init(UImg:#imageLiteral(resourceName: "img_1")))
        tablelist.append(Tmode.init(UImg:#imageLiteral(resourceName: "img_2")))
        tablelist.append(Tmode.init(UImg:#imageLiteral(resourceName: "img_1")))
        tablelist.append(Tmode.init(UImg:#imageLiteral(resourceName: "img_2")))
        tablelist.append(Tmode.init(UImg:#imageLiteral(resourceName: "img_1")))
        
        Main.dataSource = self
        Main.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.tablelist.count
    }
    

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CVCell1", for: indexPath)as! CVCell1
        
        cell.myImageView.image = self.tablelist [indexPath.row].UImg
        return cell
        
    }
}
