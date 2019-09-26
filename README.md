# Swift_Practice_Two

### TabbarController

Tabbar 能自定义title，image，selectedImage

```
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
```

### NavigationController

navigation 能自定义的不多

```
 let attributes = [
            NSAttributedString.Key.foregroundColor : UIColor.blue,
            NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18)]
        // 设置导航栏字体颜色，字体大小
        UINavigationBar.appearance().titleTextAttributes = attributes
        
        // 设置导航栏背景颜色
        UINavigationBar.appearance().barTintColor = UIColor.green
        // Do any additional setup after loading the view.
        
```