//
//  UserData1.swift
//  Landmarks
//
//  Created by Atin Singhal on 8/12/20.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
