//
//  main.swift
//  AutoLauncher
//
//  Created by JOGENDRA on 21/09/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import Cocoa

let delegate = AutoLauncherAppDelegate()
NSApplication.shared.delegate = delegate
_ = NSApplicationMain(CommandLine.argc, CommandLine.unsafeArgv)
