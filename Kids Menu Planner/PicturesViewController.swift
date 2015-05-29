//
//  PicturesViewController.swift
//  Kids Menu Planner
//
//  Created by Richard Tyran on 5/26/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class PicturesViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var picturesImages: [String] = ["bat.png","butterfly.png","cat.png","crab.png","dog.png","dolphin.png","elephant.png","horse.png","lion.png","penguin.png","scorpion.png","squirrel.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picturesImages.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: PicturesCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("PicturesCell", forIndexPath: indexPath) as PicturesCollectionViewCell
        cell.picturesImage.image = UIImage(named: picturesImages[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("Cell \(indexPath.row) selected")
        
        var cell : UICollectionViewCell = collectionView.cellForItemAtIndexPath(indexPath)!
        cell.backgroundColor = UIColor.whiteColor()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
