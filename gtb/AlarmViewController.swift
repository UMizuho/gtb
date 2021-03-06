//
//  SecondViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/10.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import Foundation
import UIKit

class AlarmViewController: UIViewController {
    
    override init() {
        super.init()
        
        // Viewの背景色をGreenに設定する.
        self.view.backgroundColor = UIColor.greenColor()
        
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    required override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


