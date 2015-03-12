//
//  ViewController.swift
//  PromiseKitViewContoller
//
//  Created by Alan on 3/12/15.
//  Copyright (c) 2015 liujuncheng. All rights reserved.
//

import UIKit
import PromiseKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func show() {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("PromiseViewController") as UIViewController
        
        self.promiseViewController(vc).then({(value:String)->Void in
            println(value)
        })
        
    }

}

