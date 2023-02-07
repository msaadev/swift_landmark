//
//  LandmarkList.swift
//  Swift Course
//
//  Created by muhammed samil demir on 7.02.2023.
//

import SwiftUI

struct LandmarkList: View {
    private let adViewControllerRepresentable = AdViewControllerRepresentable()
    private let adCoordinator = AdCoordinator()
    
    init()  {
        adCoordinator.loadAdAndWatch(from: adViewControllerRepresentable.viewController )
    }
    
    var body: some View {
        NavigationView {
            List (landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landMark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
        .background{
            adViewControllerRepresentable.frame(width: .zero,height: .zero)
            
        }
        
        
    }
    
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
