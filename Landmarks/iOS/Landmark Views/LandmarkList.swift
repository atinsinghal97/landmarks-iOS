//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Atin Singhal on 8/11/20.
//

import SwiftUI

struct LandmarkList: View {
//    @State var showFavoritesOnly = false
    @EnvironmentObject var userData: UserData
    
    var body: some View {
//        NavigationView {
            List {
                Toggle(isOn: $userData.showFavoritesOnly, label: {
                    Text("Favorites only")
                })
                ForEach(userData.landmarks) { landmark in
                    if !self.userData.showFavoritesOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark).environmentObject(self.userData)
                        ){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
//        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
    }
}
