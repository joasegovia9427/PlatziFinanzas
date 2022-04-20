//
//  TabBarViewController.swift
//  PlatziFinanzas
//
//  Created by Andres Silva on 11/15/18.
//  Copyright © 2018 Platzi. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        customButtom()
    }
    
    func customButtom() {
        let menuButton = UIButton(frame: CGRect(x: 0, y: 0, width: 32, height: 32))
        
        let tabBarFrame = tabBar.frame
            
        var menuButtonFrame = menuButton.frame
        menuButtonFrame.origin.y = tabBarFrame.origin.y - (tabBarFrame.size.height / 2)
        menuButtonFrame.origin.x = view.bounds.width / 2 - menuButtonFrame.size.width / 2
        menuButton.frame = menuButtonFrame
        menuButton.setImage(UIImage(named: "PlusButton"), for: .normal)
        
        menuButton.backgroundColor = UIColor(named: "GreenColor")
        menuButton.layer.cornerRadius = 8
        view.addSubview(menuButton)
        
        menuButton.addTarget(self, action: #selector(menuButtonAction(sender:)), for: .touchUpInside)
    }
    
    @objc private func menuButtonAction(sender: UIButton) {
        selectedIndex = 2
    }
}
