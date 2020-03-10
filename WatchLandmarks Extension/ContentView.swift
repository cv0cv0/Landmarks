//
//  ContentView.swift
//  WatchLandmarks Extension
//
//  Created by hzlx on 2020/3/10.
//  Copyright © 2020 GR. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList { WatchLandmarkDetail(landmark: $0) }
            .environmentObject(UserData())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
