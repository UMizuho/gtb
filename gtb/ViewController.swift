//
//  ViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/09.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let params =
        ["id": 1111,
         "passwd": 1234
        ]
        
        Alamofire.request(.POST,"http://localhost/",parameters: params,encoding: .JSON)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

