//
//  LandmarksApp.swift
//  Shared
//
//  Created by Atin Singhal on 8/11/20.
//

import SwiftUI

@main
struct LandmarksApp: App {
    var body: some Scene {
        WindowGroup {
//            LandmarkList().environmentObject(UserData())
            CategoryHome().environmentObject(UserData())
        }
    }
}
