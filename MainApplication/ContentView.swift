//
//  ContentView.swift
//  MainApplication
//
//  Created by JOGENDRA on 18/09/20.
//  Copyright © 2020 Jogendra. All rights reserved.
//

import SwiftUI
import ServiceManagement

struct ContentView: View {
    @State private var launchAtLogin = false {
        didSet {
            SMLoginItemSetEnabled(Constants.helperBundleID as CFString,
                                  launchAtLogin)
        }
    }
    
    private struct Constants {
        // Helper Application Bundle Identifier
        static let helperBundleID = "com.jogendra.AutoLauncher"
    }
    var body: some View {
        VStack {
            Toggle(isOn: $launchAtLogin) {
                Text(" Launch at Login")
            }
        }.frame(width: 600, height: 350, alignment: .center)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
