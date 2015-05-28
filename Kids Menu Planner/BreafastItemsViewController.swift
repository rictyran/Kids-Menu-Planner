//
//  BreafastItemsViewController.swift
//  Kids Menu Planner
//
//  Created by Richard Tyran on 5/27/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit

class BreafastItemsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var breakfastData: [String] = ["bacon","bananas","cereal bar","sausage","cereal","french toast","fried egg","ham","melon","oatmeal","pancakes","scrambled eggs","strawberries","toast","yogurt"]
    var breakfastImages: [String] = ["bacon.png","bananas.png","breakfastbar.png","breakfastsausage.jpg","cereal.png","frenchtoast.png","friedegg.jpg","hamsteak.jpg","melon.png","oatmeal.jpg","pancakes.jpg","scrambledeggs.jpg","strawberries.png","toast.png","yogurt.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return breakfastData.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell: BreakfastCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath) as BreakfastCollectionViewCell
        cell.breakfastLabelCell.text = breakfastData[indexPath.row]
        cell.breakfastImageCell.image = UIImage(named: breakfastImages[indexPath.row])
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        println("Cell \(indexPath.row) selected")
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
