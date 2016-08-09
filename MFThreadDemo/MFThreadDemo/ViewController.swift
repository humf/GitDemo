//
//  ViewController.swift
//  MFThreadDemo
//
//  Created by 胡淼枫 on 16/8/8.
//  Copyright © 2016年 胡淼枫. All rights reserved.
//

import UIKit
protocol CustomOperationDelegate {
    func updataUI(progress : Float, tag : Int)
    
}
class CustomOperation: Operation {
    var progress11:Float = 0.0
    var delegate : CustomOperationDelegate?
    var tag : Int = 0
    override func main() {
        
        while(progress11 <= 1.0){
            if self.isCancelled {
                return
            }
            progress11 += 0.05
            
            self.delegate?.updataUI(progress: self.progress11,tag: tag)
            
            
            Thread.sleep(forTimeInterval: 0.2)
        }
    }
}
class ViewController: UIViewController , CustomOperationDelegate{
    
    let queue = OperationQueue()
    var operation1 = CustomOperation()
    var operation2 = CustomOperation()
    var operation3 = CustomOperation()
    var operation4 = CustomOperation()
    
    
    var progress13:Float = 0.0
    var progress14:Float = 0.0
    
    @IBOutlet weak var progress1: UIProgressView!
    
    @IBOutlet weak var progress2: UIProgressView!
    
    @IBOutlet weak var progress3: UIProgressView!
    
    @IBOutlet weak var progress4: UIProgressView!
    
    @IBAction func start(_ sender: AnyObject) {
        NSLog("1---%d----",queue.operationCount)
        queue.cancelAllOperations()
        NSLog("2---%d----",queue.operationCount)
        self.progress1.setProgress(0.0, animated: false)
        self.progress2.setProgress(0.0, animated: false)
        self.progress3.setProgress(0.0, animated: false)
        self.progress4.setProgress(0.0, animated: false)

        
        
        self.operation1 = CustomOperation.init()
        operation1.tag = 1
        operation1.delegate = self
        self.operation2 = CustomOperation.init()
        operation2.tag = 2
        operation2.delegate = self
        self.operation3 = CustomOperation.init()
        operation3.tag = 3
        operation3.delegate = self
        self.operation4 = CustomOperation.init()
        operation4.tag = 4
        operation4.delegate = self
        
        operation1.progress11 = 0.0
        operation2.progress11 = 0.0
        operation3.progress11 = 0.0
        operation4.progress11 = 0.0
        
        queue.maxConcurrentOperationCount = 1
        
        queue.addOperations([operation1,operation2,operation3,operation4], waitUntilFinished: false)
    }
    
    
    
    func updataUI(progress: Float,tag:Int) {
        
        OperationQueue.main().addOperation({
            if tag == 1{
                self.progress1.setProgress(progress, animated: true)

            }else if tag == 2{
                self.progress2.setProgress(progress, animated: true)
            }else if tag == 3{
                self.progress3.setProgress(progress, animated: true)
            }else if tag == 4{
                self.progress4.setProgress(progress, animated: true)
            }
        })
    }
    
    @IBAction func button1(_ sender: AnyObject) {
        self.progress1.setProgress(0.0, animated: false)

        if self.operation1.isCancelled || self.operation1.isFinished{
            self.operation1 = CustomOperation.init()
            operation1.queuePriority = .veryHigh
            operation1.progress11 = 0.0
            operation1.tag = 1
            operation1.delegate = self
            queue.addOperation(self.operation1)
        }else{
            self.operation1.cancel()
        }
        
    }
    
    @IBAction func button2(_ sender: AnyObject) {
        self.progress2.setProgress(0.0, animated: false)
        
        if self.operation2.isCancelled || self.operation2.isFinished{
            self.operation2 = CustomOperation.init()
            operation2.progress11 = 0.0
            operation2.tag = 2
            operation2.delegate = self
            queue.addOperation(self.operation2)
        }else{
            self.operation2.cancel()
        }    }
    
    @IBAction func button3(_ sender: AnyObject) {
        self.progress3.setProgress(0.0, animated: false)
        
        if self.operation3.isCancelled || self.operation3.isFinished{
            self.operation3 = CustomOperation.init()
            operation3.progress11 = 0.0
            operation3.tag = 3
            operation3.delegate = self
            queue.addOperation(self.operation3)
        }else{
            self.operation3.cancel()
        }    }
    
    @IBAction func button4(_ sender: AnyObject) {
        self.progress4.setProgress(0.0, animated: false)
        
        if self.operation4.isCancelled || self.operation4.isFinished{
            self.operation4 = CustomOperation.init()
            operation4.progress11 = 0.0
            operation4.tag = 4
            operation4.delegate = self
            queue.addOperation(self.operation4)
        }else{
            self.operation4.cancel()
        }    }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

