//
//  AdViewControllerRepresentable.swift
//  Swift Course
//
//  Created by muhammed samil demir on 7.02.2023.
//

import Foundation
import GoogleMobileAds
import SwiftUI

struct AdViewControllerRepresentable: UIViewControllerRepresentable {
  let viewController = UIViewController()

  func makeUIViewController(context: Context) -> some UIViewController {
    return viewController
  }

  func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    // No implementation needed. Nothing to update.
  }
}
