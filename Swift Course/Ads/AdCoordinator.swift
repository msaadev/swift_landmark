//
//  AdCoordinator.swift
//  Swift Course
//
//  Created by muhammed samil demir on 7.02.2023.
//

import Foundation
import GoogleMobileAds

class AdCoordinator: NSObject {
  private var ad: GADInterstitialAd?

  func loadAd() {
    GADInterstitialAd.load(
      withAdUnitID: "ca-app-pub-3940256099942544/4411468910", request: GADRequest()
    ) { ad, error in
      if let error = error {
        return print("Failed to load ad with error: \(error.localizedDescription)")
      }

      self.ad = ad
        
    }
  }
    
    func loadAdAndWatch(from viewController: UIViewController) {
      GADInterstitialAd.load(
        withAdUnitID: "ca-app-pub-3940256099942544/4411468910", request: GADRequest()
      ) { ad, error in
        if let error = error {
          return print("Failed to load ad with error: \(error.localizedDescription)")
        }

        self.ad = ad
          self.presentAd(from: viewController)
          
      }
    }

  func presentAd(from viewController: UIViewController) {
    guard let fullScreenAd = ad else {
      return print("Ad wasn't ready")
    }

    fullScreenAd.present(fromRootViewController: viewController)
  }
}
