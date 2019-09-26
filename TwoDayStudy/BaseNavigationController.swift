//
//  BaseNavigationController.swift
//  TwoDayStudy
//
//  Created by le tong on 2019/9/26.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class BaseNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let attributes = [
            NSAttributedString.Key.foregroundColor : UIColor.blue,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]
        // 设置导航栏字体颜色，字体大小
        UINavigationBar.appearance().titleTextAttributes = attributes
        
        // 设置导航栏背景颜色
        UINavigationBar.appearance().barTintColor = UIColor.green
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
