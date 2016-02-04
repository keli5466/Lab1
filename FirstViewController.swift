//
//  FirstViewController.swift
//  Lab1
//
//  Created by Kelly Linehan on 1/28/16.
//  Copyright (c) 2016 Kelly Linehan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    let typeComponent = 2
    let courseComponent = 0
    let moodComponent = 1
    
    var types : [String]!
    var course : [String]!
    var mood : [String]!
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var foodmood: UIPickerView!
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 3
    }
    func pickerView(pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
        if component == typeComponent{
            return 100.0
        }
        if component == courseComponent{
            return 100.0
        }
        else{
            return 100.0
        }
            }

    /*
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        let titleData = types[row]
        let myTitle = NSAttributedString(string: titleData, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 6.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
        pickerLabel.attributedText = myTitle
        return pickerLabel
    }
*/
    
   func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        var pickerLabel = UILabel()
        //var fontAttributes = [NSFontAttributeName: UIFont(name: "Georgia", size: 5.0)]
        
        if component == typeComponent{
            
            let title = NSAttributedString(string: types[row] as String!, attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 14.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
            //return title
            pickerLabel.attributedText = title
            return pickerLabel
        }
        if component == courseComponent{
            let ftitle = NSAttributedString(string: course[row], attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 14.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
            pickerLabel.attributedText = ftitle
            return pickerLabel
            
        }
        else {
            let mtitle = NSAttributedString(string: mood[row],attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 14.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
            pickerLabel.attributedText = mtitle
            return pickerLabel
            
        }
        /*else {
            let mtitle = NSAttributedString(string: mood[row],attributes: [NSFontAttributeName:UIFont(name: "Georgia", size: 10.0)!,NSForegroundColorAttributeName:UIColor.blackColor()])
            pickerLabel.attributedText = mtitle
            return pickerLabel
    }
*/
    }



    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component == courseComponent{
            return course.count
            //return course.lable
        }
        if component == typeComponent{
            return types.count
        }

         else {
            return mood.count
        }
    }
    
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      
    
        if component == courseComponent{
            return course[row]
            
        }
        if component == typeComponent{
            return types[row]
        }
        else{
            return mood[row]
        }
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let typerow = pickerView.selectedRowInComponent(typeComponent)
        
        let courserow = pickerView.selectedRowInComponent(courseComponent)
        let moodrow = pickerView.selectedRowInComponent(moodComponent)
        
        label.text = "It's \(course[courserow])  You Are \(mood[moodrow]) And Want \(types[typerow]) "
        
    }
    // if component equals 4
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstpath = NSBundle.mainBundle().pathForResource("course", ofType: "plist")
        course = NSArray(contentsOfFile: firstpath!) as! Array!

        let path = NSBundle.mainBundle().pathForResource("types", ofType: "plist")
        types = NSArray(contentsOfFile: path!) as! Array!
        
        
        let secondpath = NSBundle.mainBundle().pathForResource("mood", ofType: "plist")
        mood = NSArray(contentsOfFile: secondpath!) as! Array!
        
        
        print(types)
        print(course)
        print(mood)
        
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

