//
//  ForthViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/12.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import Foundation
import UIKit

class ForthViewController: UIViewController {
    
    let myButtonToHome = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myImage = UIImage(named: "background.jpg")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = "登録が完了しました"
        myLabel.textColor = UIColor.whiteColor()
        myLabel.textAlignment = NSTextAlignment.Center
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 100)
        self.view.addSubview(myLabel)
        
        myButtonToHome.frame = CGRectMake(0,0,120,40)
        myButtonToHome.backgroundColor = UIColor.redColor();
        myButtonToHome.layer.masksToBounds = true
        myButtonToHome.setTitle("Home", forState: .Normal)
        myButtonToHome.layer.cornerRadius = 5.0
        myButtonToHome.layer.position = CGPoint(x: self.view.bounds.width/2 , y:250)
        myButtonToHome.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonToHome)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}