//
//  MainTabView.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
  @StateObject var viewModel = MainTabViewModel()
  @StateObject var ampolEnergyAccountController = AmpolEnergyAccountController(
    ampolEnergyAccountDataProvider: MockAmpolEnergyAccountDataProvider()
  )

  var body: some View {
    TabView(selection: $viewModel.selectedTab) {
      HomeTab(
        ampolEnergyAccountController: ampolEnergyAccountController,
        onProfileSelected: { viewModel.selectedTab = .profile }
      )
      FuelPayTab()
      ChargeTab()
      EnergyTab()
      ProfileTab()
    }
  }
}
