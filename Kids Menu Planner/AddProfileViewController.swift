//
//  Add Profile ViewController.swift
//  Kids Menu Planner
//
//  Created by Richard Tyran on 5/22/15.
//  Copyright (c) 2015 Richard Tyran. All rights reserved.
//

import UIKit



class AddProfileViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    
    @IBOutlet var addProfileImage: UIView!
    
    @IBAction func goToPicturesButton(sender: AnyObject) {
    }
    
    @IBAction func saveNewProfileButton(sender: AnyObject) {
    
    
    
    
    
    
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

                
        
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
//    func addProfile() {
//        
//        println("addProfile")
//        
//        var user = PFUser()
//        
//        user.username = nameTextField.text
//        user.image = 
//        
//    }
    
    
    
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
