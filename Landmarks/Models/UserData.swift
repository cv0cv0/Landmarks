//
//  UserData.swift
//  Landmarks
//
//  Created by hzlx on 2020/1/1.
//  Copyright © 2020 GR. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    @Published var profile = Profile.default
}
