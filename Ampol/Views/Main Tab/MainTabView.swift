//
//  MainTabView.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
  @ObservedObject var viewModel = MainTabViewModel()

  var body: some View {
    TabView(selection: $viewModel.selectedTab) {
      HomeTab(
        onProfileSelected: { viewModel.selectedTab = .profile }
      )
      FuelPayTab()
      ChargeTab()
      EnergyTab()
      ProfileTab()
    }
  }
}
