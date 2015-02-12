//
//  MainViewController.swift
//  gtb
//
//  Created by Mizuho Ueda on 2015/02/13.
//  Copyright (c) 2015年 Mizuho Ueda. All rights reserved.
//

import Foundation
import UIKit

class MainViewController: UITabBarController {

    var window: UIWindow?
    
    var myFirstTab: WeatherViewController!
    var mySecondTab: AlarmViewController!
    var myThirdTab: ColumnViewController!
    
    override func viewDidLoad() {
        
        myFirstTab = WeatherViewController()
        mySecondTab = AlarmViewController()
        myThirdTab = ColumnViewController()
        
        
        let myTabs = NSArray(objects: myFirstTab!, mySecondTab!,myThirdTab!)
        
        myFirstTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Recents, tag: 1)
        myFirstTab.title = "Weather"
        
        mySecondTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.Featured, tag: 2)
        mySecondTab.title = "Alarm"
        
        myThirdTab.tabBarItem = UITabBarItem(tabBarSystemItem: UITabBarSystemItem.More, tag: 3)
        myThirdTab.title = "Column"
        

        
        self.setViewControllers(myTabs, animated: false)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    


}
