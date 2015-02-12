//
//  ThirdViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/10.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import Foundation
import UIKit

class SignupViewController: UIViewController,UITextFieldDelegate {
    
    let view1 = UIView()
    let myButtonSubmit = UIButton()
    let myButtonCancel = UIButton()
    
    var _indicator: UIActivityIndicatorView?



    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
    
        view1.frame = CGRectMake(self.view.bounds.width/6, self.view.bounds.height/7, 210, 400)
        view1.backgroundColor = UIColor.purpleColor()
        view1.layer.cornerRadius = 20.0
        
        self.view.addSubview(view1)
        
        // Label id
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = "◼︎名前(ID)　※6~12文字"
        myLabel.textColor = UIColor.blackColor()
        myLabel.font = UIFont.systemFontOfSize(15)
        myLabel.textAlignment = NSTextAlignment.Left
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2,y: 110)
        self.view.addSubview(myLabel)
        
        
        // Label id
        let myLabel2: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel2.text = "◼︎パスワード　※6~12文字"
        myLabel2.textColor = UIColor.blackColor()
        myLabel2.font = UIFont.systemFontOfSize(15)
        myLabel2.textAlignment = NSTextAlignment.Left
        myLabel2.layer.position = CGPoint(x: self.view.bounds.width/2,y: 170)
        self.view.addSubview(myLabel2)
        
        // Label pass
        let myLabel3: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel3.text = "◼︎パスワード(確認)"
        myLabel3.textColor = UIColor.blackColor()
        myLabel3.font = UIFont.systemFontOfSize(15)
        myLabel3.textAlignment = NSTextAlignment.Left
        myLabel3.layer.position = CGPoint(x: self.view.bounds.width/2,y: 230)
        self.view.addSubview(myLabel3)
        
        // Label pass
        let myLabel4: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel4.text = "◼︎性別"
        myLabel4.textColor = UIColor.blackColor()
        myLabel4.font = UIFont.systemFontOfSize(15)
        myLabel4.textAlignment = NSTextAlignment.Left
        myLabel4.layer.position = CGPoint(x: self.view.bounds.width/2,y: 320)
        self.view.addSubview(myLabel4)

        
        
        //textfield id
        
        let myTextField = UITextField(frame: CGRectMake(0,0,180,30))
        myTextField.delegate = self
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        myTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:140);
        myTextField.keyboardType = UIKeyboardType.Default
        myTextField.returnKeyType = UIReturnKeyType.Done
        
        self.view.addSubview(myTextField)
        
        //textfield pass
        
        let myTextField2: UITextField = UITextField(frame: CGRectMake(0,0,180,30))
        myTextField2.delegate = self
        myTextField2.borderStyle = UITextBorderStyle.RoundedRect
        myTextField2.layer.position = CGPoint(x:self.view.bounds.width/2,y:200);
        myTextField2.keyboardType = UIKeyboardType.Default
        myTextField2.returnKeyType = UIReturnKeyType.Done
        myTextField2.secureTextEntry = true
        
        self.view.addSubview(myTextField2)
        
        //textfield pass2
        
        let myTextField3: UITextField = UITextField(frame: CGRectMake(0,0,180,30))
        myTextField3.delegate = self
        myTextField3.borderStyle = UITextBorderStyle.RoundedRect
        myTextField3.layer.position = CGPoint(x:self.view.bounds.width/2,y:260);
        myTextField3.keyboardType = UIKeyboardType.Default
        myTextField3.returnKeyType = UIReturnKeyType.Done
        myTextField3.secureTextEntry = true
        
        self.view.addSubview(myTextField3)
        
        
        //sexual
        
        let myArray: NSArray = ["men","women"]
        
        let mySegcon: UISegmentedControl = UISegmentedControl(items: myArray)
        mySegcon.center = CGPoint(x: self.view.frame.width/2+10, y: 320)
        mySegcon.backgroundColor = UIColor.grayColor()
        mySegcon.tintColor = UIColor.whiteColor()
        
        self.view.addSubview(mySegcon)
        
        myButtonSubmit.frame = CGRectMake(0,0,80,30)
        myButtonSubmit.backgroundColor = UIColor.blueColor();
        myButtonSubmit.layer.masksToBounds = true
        myButtonSubmit.setTitle("Submit", forState: .Normal)
        myButtonSubmit.layer.cornerRadius = 5.0
        myButtonSubmit.layer.position = CGPoint(x: self.view.bounds.width/2+50 , y:450)
        myButtonSubmit.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonSubmit)
        
        
        myButtonCancel.frame = CGRectMake(0,0,80,30)
        myButtonCancel.backgroundColor = UIColor.redColor();
        myButtonCancel.layer.masksToBounds = true
        myButtonCancel.setTitle("Cancel", forState: .Normal)
        myButtonCancel.layer.cornerRadius = 5.0
        myButtonCancel.layer.position = CGPoint(x: self.view.bounds.width/2-50 , y:450)
        myButtonCancel.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(myButtonCancel)

        
        
    }

    func onClickMyButton(sender: UIButton){
    
        if sender == myButtonSubmit {
            
            _indicator?.startAnimating()
            
            let myForthViewController: UIViewController = ForthViewController()
            myForthViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
            self.presentViewController(myForthViewController, animated: true, completion: nil)
            
            var uid = NSUserDefaults.standardUserDefaults().stringForKey("uid_gtb")
            
            if((uid) != nil){
                println("uid_gtb:"+uid!)
            }else{
                // uidを端末に記録
                NSUserDefaults.standardUserDefaults().setObject("woooooo",forKey:"uid_gtb")
            }

            
            _indicator?.stopAnimating()
            
        }else if sender == myButtonCancel{
        
            let myFirstViewController: UIViewController = ViewController()
            myFirstViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
            self.presentViewController(myFirstViewController, animated: true, completion: nil)
        
        }
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



