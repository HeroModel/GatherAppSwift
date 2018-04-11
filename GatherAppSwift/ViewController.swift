//
//  ViewController.swift
//  GatherAppSwift
//
//  Created by apple on 2018/4/11.
//  Copyright © 2018年 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "导航栏"
        self.createView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createView(){
        let button = UIButton(type: UIButtonType.custom)
        button.frame = CGRect (x: 120, y: 150, width: 120, height: 60)
        button.setTitle("Swift按钮", for: UIControlState.normal)
        button.backgroundColor = UIColor.red
        button.setTitleColor(UIColor.white, for: UIControlState.normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 5.0
        button.tag = 2000
        self.view.addSubview(button)
//        button.addTarget(self, action: #selector(tapped), for: UIControlEvents.touchUpInside)
        button.addTarget(self, action: #selector(tapped(_:)), for: UIControlEvents.touchUpInside)
    }

    @objc func tapped (){
        NSLog("不带参数")
    }
    
    @objc func tapped (_ button:UIButton){
        NSLog("带参数的按钮:%ld", button.tag)
    }
    
}

