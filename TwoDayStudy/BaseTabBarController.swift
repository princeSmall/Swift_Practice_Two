


//
//  BaseTabBarController.swift
//  TwoDayStudy
//
//  Created by le tong on 2019/9/26.
//  Copyright © 2019 iOS. All rights reserved.
//

import UIKit

class BaseTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setChildTabbar()
        // Do any additional setup after loading the view.
    }
    func setChildTabbar() -> Void {
        let baseV = self.setChildViewController(vc: ViewController(), title: "首页", image: "social_github", selectedImage: "social_github_un")
        let A = self.setChildViewController(vc: AViewController.init(), title: "A", image: "social_twitter", selectedImage: "social_twitter_un")
        let B = self.setChildViewController(vc: BViewController.init(), title: "B", image: "social_wechat", selectedImage: "social_wechat_un")
        let C = self.setChildViewController(vc: CViewController.init(), title: "C", image: "applets", selectedImage: "applets_un")
        self.viewControllers = [baseV,A,B,C]
        tabBar.barTintColor = UIColor.white
        tabBar.backgroundColor = UIColor.white
    }
//    设置子viewController的title，image，selectedImage，设置了防止图片被渲染
//    都添加了自定义的navbar
    func setChildViewController(vc: UIViewController, title: NSString,image: NSString,selectedImage: NSString) -> UIViewController{
         let Nav = BaseNavigationController.init(rootViewController: vc)
        Nav.tabBarItem.title = title as String
        Nav.tabBarItem.image = UIImage.init(named: image as String)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        Nav.tabBarItem.selectedImage = UIImage.init(named: selectedImage as String)?.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        
        return Nav
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
