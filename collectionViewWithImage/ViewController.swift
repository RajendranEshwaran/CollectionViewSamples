//
//  ViewController.swift
//  collectionViewWithImage
//
//  Created by gomathi saminathan on 7/27/18.
//  Copyright © 2018 Rajendran Eshwaran. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDataSource , UICollectionViewDelegate {
    
    let imgArray:[String] = ["1.jpg","2.jpg","3.jpg","4.jpg","5.jpg","6.jpg","7.jpg","8.jpg","9.jpg","10.jpg","11.jpg","12.jpg","13.jpg","14.jpg","15.jpg","16.jpg","17.jpg","18.jpg","19.jpg","20.jpg"]
    
    @IBOutlet weak var collectionViewController: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.cellImageView.image = UIImage(named: imgArray[indexPath.row])
        
        return cell
    }
    

}

