//
//  RootTabbarViewController.swift
//  mineswift
//
//  Created by 范玉辉 on 2017/6/8.
//  Copyright © 2017年 范玉辉. All rights reserved.
//

import UIKit

class RootTabbarViewController: UITabBarController {

    private let homeVC = ViewController()
    private let oneVC = ViewController()
    private let twoVC = ViewController()
    private let mineVC = ViewController()
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        setup()
        
        
        // Do any additional setup after loading the view.
    }
    private func setup()
    {
        let homeNC = RootNavigationViewController(rootViewController: homeVC)
        let oneNC = RootNavigationViewController(rootViewController: oneVC)
        let twoNC = RootNavigationViewController(rootViewController: twoVC)
        let mineNC = RootNavigationViewController(rootViewController: mineVC)
        
        homeNC.tabBarItem = UITabBarItem(title: "首页", image: R.Image.Home, selectedImage: R.Image.Home)
        oneNC.tabBarItem = UITabBarItem(title: "消息", image: R.Image.Nodes, selectedImage: R.Image.Nodes)
        twoNC.tabBarItem = UITabBarItem(title: "发现", image: R.Image.TabarSearch, selectedImage: R.Image.TabarSearch)
        mineNC.tabBarItem = UITabBarItem(title: "我的", image: R.Image.Profile, selectedImage: R.Image.Profile)
        
        self.viewControllers = [homeNC, oneNC, twoNC, mineNC]
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
