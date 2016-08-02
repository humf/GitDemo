//
//  GestureViewController.swift
//  MFStoryboard
//
//  Created by 胡淼枫 on 16/8/2.
//  Copyright © 2016年 胡淼枫. All rights reserved.
//

import UIKit
class GestureViewController: UIViewController {

    @IBAction func tapToNextVC(sender: AnyObject) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let secondVC = storyBoard.instantiateViewControllerWithIdentifier("pushToSecond") as! SecondViewController
        secondVC.name = "abc"
        secondVC.age = 12
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
