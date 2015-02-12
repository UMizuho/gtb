//
//  SixthViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/12.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import Foundation
import UIKit

class ColumnViewController: UIViewController{
    
    let myButtonLogout = UIButton()

    
    
    override init() {
        super.init()
        
        // Viewの背景色をGreenに設定する.
        self.view.backgroundColor = UIColor.greenColor()
        
        myButtonLogout.frame = CGRectMake(0,0,120,40)
        myButtonLogout.backgroundColor = UIColor.redColor();
        myButtonLogout.layer.masksToBounds = true
        myButtonLogout.setTitle("Logout", forState: .Normal)
        myButtonLogout.layer.cornerRadius = 5.0
        myButtonLogout.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-250)
        myButtonLogout.addTarget(self, action: "onClickLogout:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonLogout)

    }
    
    func onClickLogout(sender: UIButton){
        
        if sender == myButtonLogout{
        
        let ud = NSUserDefaults.standardUserDefaults()
        ud.removeObjectForKey("uid_gtb")
    
        let myFirstViewController: UIViewController = ViewController()
        
        myFirstViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        self.presentViewController(myFirstViewController, animated: true, completion: nil)
        
        }
    
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }


    override func viewDidLoad() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}


