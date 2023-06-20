//
//  MainTabViewModel.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import Foundation

class MainTabViewModel: ObservableObject {
  enum Tab: Hashable {
    case home
    case fuelPay
    case charge
    case energy
    case profile
  }

  @Published var selectedTab: Tab? = .home
}

extension MainTabViewModel.Tab {
  var viewTag: Self? { self }

  var name: String {
    switch self {
    case .home: return "Home"
    case .fuelPay: return "FuelPay"
    case .charge: return "Charge"
    case .energy: return "Energy"
    case .profile: return "Profile"
    }
  }

  var systemImage: String {
    switch self {
    case .home: return "house"
    case .fuelPay: return "fuelpump.fill"
    case .charge: return "bolt.batteryblock.fill"
    case .energy: return "bolt.fill"
    case .profile: return "person.crop.circle"
    }
  }
}
