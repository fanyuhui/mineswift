//
//  ViewController.swift
//  mineswift
//
//  Created by 范玉辉 on 2017/6/5.
//  Copyright © 2017年 范玉辉. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let address = ["北京","上海","广州","郑州"]
        
        
        for addres in address {
            NSLog(addres )
            NSLog("%d" + addres,1)
            print(addres)
        }
        
        var sum = 0
        
        for i in 1...10 {
            sum += i
            NSLog("%d",sum)
        }
        for _ in 1...10 {
            NSLog("学习")
        }
        
        var i = 1
        var summ = 0
        
        while i<100 {
            summ+=i
            i += 1
        }
        NSLog("%d", summ)
        
        
        
        
        
        
        
        
        
        
        
        
        
        
//        
//        let tableview = UITableView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
//        tableview.dataSource = self ;
//        tableview.delegate = self;
//        tableview.backgroundColor = UIColor.green
//        self.view.addSubview(tableview)
//        
        
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 10
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let identifier="identtifier";
        var cell=tableView.dequeueReusableCell(withIdentifier: identifier)
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: identifier);
        }
//        cell?.detailTextLabel?.text = "待添加内容";
//        cell?.detailTextLabel?.font = UIFont .systemFont(ofSize: CGFloat(13))
        cell?.accessoryType=UITableViewCellAccessoryType.disclosureIndicator
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

