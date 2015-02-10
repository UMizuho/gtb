//
//  ViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/09.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController,UITextFieldDelegate {
    
    var myButtonNext: UIButton!
    var myButtonNext2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        // Label id
        let myLabel: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel.text = "id"
        myLabel.textColor = UIColor.blueColor()
        myLabel.textAlignment = NSTextAlignment.Right
        myLabel.layer.position = CGPoint(x: self.view.bounds.width/2-210,y: 220)
        self.view.addSubview(myLabel)
        
        // Label pass
        let myLabel2: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel2.text = "pass"
        myLabel2.textColor = UIColor.blueColor()
        myLabel2.textAlignment = NSTextAlignment.Right
        myLabel2.layer.position = CGPoint(x: self.view.bounds.width/2-210,y: 255)
        self.view.addSubview(myLabel2)
        
        // Label or
        let myLabel3: UILabel = UILabel(frame: CGRectMake(0,0,200,50))
        myLabel3.text = "or"
        myLabel3.textColor = UIColor.blueColor()
        myLabel3.textAlignment = NSTextAlignment.Center
        myLabel3.layer.position = CGPoint(x: self.view.bounds.width/2,y: self.view.bounds.height-205)
        self.view.addSubview(myLabel3)
        
        
        //textfield id
        
        let myTextField = UITextField(frame: CGRectMake(0,0,200,30))
        myTextField.delegate = self
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        myTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:220);
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        myTextField.keyboardType = UIKeyboardType.Default
        myTextField.returnKeyType = UIReturnKeyType.Done
        
        self.view.addSubview(myTextField)
        
        //textfield pass
        
        let myTextField2: UITextField = UITextField(frame: CGRectMake(0,0,200,30))
        myTextField2.delegate = self
        myTextField2.borderStyle = UITextBorderStyle.RoundedRect
        myTextField2.layer.position = CGPoint(x:self.view.bounds.width/2,y:255);
        myTextField2.borderStyle = UITextBorderStyle.RoundedRect
        myTextField2.keyboardType = UIKeyboardType.Default
        myTextField2.returnKeyType = UIReturnKeyType.Done
        myTextField2.secureTextEntry = true
        
        self.view.addSubview(myTextField2)
        
        
        
        // ボタンの生成する.
        //Login
        
        myButtonNext = UIButton(frame: CGRectMake(0,0,120,40))
        myButtonNext.backgroundColor = UIColor.redColor();
        myButtonNext.layer.masksToBounds = true
        myButtonNext.setTitle("Login", forState: .Normal)
        myButtonNext.layer.cornerRadius = 5.0
        myButtonNext.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-250)
        myButtonNext.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        //SignUp
        
        myButtonNext2 = UIButton(frame: CGRectMake(0,0,120,40))
        myButtonNext2.backgroundColor = UIColor.greenColor();
        myButtonNext2.layer.masksToBounds = true
        myButtonNext2.setTitle("SignUp", forState: .Normal)
        myButtonNext2.layer.cornerRadius = 5.0
        myButtonNext2.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-160)
        myButtonNext2.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンを追加する.
        self.view.addSubview(myButtonNext);
        self.view.addSubview(myButtonNext2);
        
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func onClickMyButton(sender: UIButton){
        
        //http通信
        
        let id = "1234"
        let passwd = "1234"
        
        let params =
        ["id": id,
            "passwd": passwd]
        
        Alamofire.request(.POST,"http://localhost/",parameters: params,encoding: .JSON)
        
        // 遷移するViewを定義する.
        let mySecondViewController: UIViewController = SecondViewController()
        
        // アニメーションを設定する.
        mySecondViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        // Viewの移動する.
        self.presentViewController(mySecondViewController, animated: true, completion: nil)
        
    }
    
}

