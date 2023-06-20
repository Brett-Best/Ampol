//
//  EnergyTab.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct EnergyTab: View {
  static let tab = MainTabViewModel.Tab.energy

  var body: some View {
    NavigationView {
      ScrollView {
      }
      .navigationTitle(Self.tab.name)
    }
    .navigationViewStyle(.stack)
    .tabItem {
      Label(Self.tab.name, systemImage: Self.tab.systemImage)
    }
    .tag(Self.tab.viewTag)
  }
}
