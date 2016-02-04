//
//  SecondViewController.swift
//  Lab1
//
//  Created by Kelly Linehan on 1/28/16.
//  Copyright (c) 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBAction func getYelp(sender: AnyObject) {
        if(UIApplication.sharedApplication().canOpenURL(NSURL(string: "yelp://")!)){
            UIApplication.sharedApplication().openURL(NSURL(string: "yelp://")!)
            }
        else {
                UIApplication.sharedApplication().openURL(NSURL(string: "http://www.yelp.com/denver")!)
            print("open yelp online")
        }
    
        }
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

