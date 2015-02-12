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
    
    let myButtonLogin = UIButton()
    let myButtonSignup = UIButton()
    
    var _indicator: UIActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.view.backgroundColor = UIColor(patternImage: UIImage(named: "background.jpg")!)
        
        let myImage = UIImage(named: "background.jpg")!
        var myImageView = UIImageView()
        myImageView.image = myImage
        myImageView.frame = CGRectMake(0, 0, myImage.size.width, myImage.size.height)
        self.view.addSubview(myImageView)
        
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
        
        myButtonLogin.frame = CGRectMake(0,0,120,40)
        myButtonLogin.backgroundColor = UIColor.redColor();
        myButtonLogin.layer.masksToBounds = true
        myButtonLogin.setTitle("Login", forState: .Normal)
        myButtonLogin.layer.cornerRadius = 5.0
        myButtonLogin.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-250)
        myButtonLogin.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        //SignUp
        
        myButtonSignup.frame = CGRectMake(0,0,120,40)
        myButtonSignup.backgroundColor = UIColor.greenColor();
        myButtonSignup.layer.masksToBounds = true
        myButtonSignup.setTitle("SignUp", forState: .Normal)
        myButtonSignup.layer.cornerRadius = 5.0
        myButtonSignup.layer.position = CGPoint(x: self.view.bounds.width/2 , y:self.view.bounds.height-160)
        myButtonSignup.addTarget(self, action: "onClickMyButton:", forControlEvents: .TouchUpInside)
        
        
        // ボタンを追加する.
        self.view.addSubview(myButtonLogin);
        self.view.addSubview(myButtonSignup);
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func onClickMyButton(sender: UIButton){
        
        if sender == myButtonLogin {
            
        _indicator?.startAnimating()
        
        //http通信
        
        let id = "1234"
        let passwd = "1234"
        
        let params =
        ["id": id,
            "passwd": passwd]
        
        Alamofire.request(.POST,"http://localhost/",parameters: params,encoding: .JSON)
        
        // 遷移するViewを定義する.
        let mainViewController: UIViewController = MainViewController()
        
        // アニメーションを設定する.
        mainViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
        
        // Viewの移動する.
        self.presentViewController(mainViewController, animated: true, completion: nil)
            
            NSUserDefaults.standardUserDefaults().setObject("woooooo",forKey:"uid_gtb")

            
        _indicator?.stopAnimating()
        
        } else if sender == myButtonSignup {
        
            let signupViewController: UIViewController = SignupViewController()
            
            signupViewController.modalTransitionStyle = UIModalTransitionStyle.CoverVertical
            
            self.presentViewController(signupViewController, animated: true, completion: nil)
        
        
        }
        
        
    }
    
}

