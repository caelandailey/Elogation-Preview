//
//  AppDelegate.swift
//  ElogationPreview
//
//  Created by Caelan Dailey on 7/2/17.
//  Copyright © 2017 Caelan Dailey. All rights reserved.
//

import UIKit
import ElongationPreview

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // Add dark view behind the status bar
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.1) {
            let view = UIView(frame: UIApplication.shared.statusBarFrame)
            view.backgroundColor = UIColor.black
            view.alpha = 0.7
            self.window?.addSubview(view)
            self.window?.bringSubview(toFront: view)
        }
        
        // Customize ElongationConfig
        var config = ElongationConfig()
        config.scaleViewScaleFactor = 1
        config.topViewHeight = 190
        config.bottomViewHeight = 170
        config.bottomViewOffset = 20
        config.parallaxFactor = 100
        config.separatorHeight = 0.5
        config.separatorColor = UIColor.darkGray
        
        // Durations for presenting/dismissing detail screen
        config.detailPresetingDuration = 0.4
        config.detailDismissingDuration = 0.4
        
        // Customize behaviour
        config.headerTouchAction = .collpaseOnBoth
        
        // Save created appearance object as default
        ElongationConfig.shared = config
        
        return true
    }
    
}

