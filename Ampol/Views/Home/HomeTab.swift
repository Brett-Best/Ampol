//
//  HomeTab.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct HomeTab: View {
  enum Action {
    case fuelPay
  }

  static let tab = MainTabViewModel.Tab.home

  let ampolEnergyAccountController: AmpolEnergyAccountController
  let onProfileSelected: () -> Void

  @ScaledMetric(relativeTo: .title3)
  var sectionsSpacing = 24

  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: sectionsSpacing) {
          FuelPaySection()
          ChargeSection()
          EnergySection(ampolEnergyAccountController: ampolEnergyAccountController)
        }
        .padding(16)
      }
      .navigationTitle(Self.tab.name)
      .toolbar(content: toolbarContent)
    }
    .navigationViewStyle(.stack)
    .tabItem {
      Label(Self.tab.name, systemImage: Self.tab.systemImage)
    }
    .tag(Self.tab.viewTag)
  }

  @ToolbarContentBuilder
  func toolbarContent() -> some ToolbarContent {
    ToolbarItem(placement: .navigationBarTrailing) {
      Button(
        action: onProfileSelected,
        label: {
          Image(systemName: MainTabViewModel.Tab.profile.systemImage)
        }
      )
    }
  }
}
