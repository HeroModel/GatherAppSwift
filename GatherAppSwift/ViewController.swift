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
        self.navigationItem.title = kTestPCH//"导航栏"
        self.navigationController?.navigationBar.isTranslucent = false
        
        self.createView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func createView(){
        
         for i in 0 ..< 5 {
            let button = UIButton(type: UIButtonType.custom)
            button.frame = CGRect (x: Int(SCREEN_WIDTH / 2) - 60, y: 50 + i * 60 + i * 35, width: 120, height: 60)
            button.setTitle(String.localizedStringWithFormat("Swift按钮%ld", i), for: UIControlState.normal)
            button.backgroundColor = UIColor.red
            button.setTitleColor(UIColor.white, for: UIControlState.normal)
            button.layer.masksToBounds = true
            button.layer.cornerRadius = 5.0
            button.tag = 2000 + i
            self.view.addSubview(button)
//            button.addTarget(self, action: #selector(tapped), for: UIControlEvents.touchUpInside)
            button.addTarget(self, action: #selector(addTapped(_:)), for: UIControlEvents.touchUpInside)
            
        }
    }

   @objc func tapped(){
        print("不带参数")
    let vc = ObjCViewController()
    self.navigationController?.pushViewController(vc, animated: true)
    
    }
    
    @objc func addTapped (_ button:UIButton){
        NSLog("带参数的按钮:%ld", button.tag)
        let vc = ObjCViewController()
        self.navigationController?.pushViewController(vc, animated: true)


    }
    
}

