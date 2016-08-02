//
//  SecondViewController.swift
//  MFStoryboard
//
//  Created by 胡淼枫 on 16/8/2.
//  Copyright © 2016年 胡淼枫. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var name : String?
    var age : Int?
    override func viewDidLoad() {
        super.viewDidLoad()

        print(name!,age!)
        
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
