//
//  AppDelegate.swift
//  AutoLauncher
//
//  Created by JOGENDRA on 18/09/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AutoLauncherAppDelegate: NSObject, NSApplicationDelegate {
    
    struct Constants {
        // Bundle Identifier of MainApplication target
        static let mainAppBundleID = "com.jogendra.MainApplication"
    }
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        let runningApps = NSWorkspace.shared.runningApplications
        let isRunning = runningApps.contains {
            $0.bundleIdentifier == Constants.mainAppBundleID
        }
        
        if !isRunning {
            var path = Bundle.main.bundlePath as NSString
            for _ in 1...4 {
                path = path.deletingLastPathComponent as NSString
            }
            let applicationPathString = path as String
            guard let pathURL = URL(string: applicationPathString) else { return }
            NSWorkspace.shared.openApplication(at: pathURL,
                                               configuration: NSWorkspace.OpenConfiguration(),
                                               completionHandler: nil)
        }
    }
    
}

