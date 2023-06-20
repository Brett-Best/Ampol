//
//  HomeTab+EnergySection.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

extension HomeTab {
  struct EnergySection: View {
    @ScaledMetric var sectionSpacing = 12
    @ScaledMetric var contentPadding = 8

    var body: some View {
      VStack(spacing: sectionSpacing) {
        Section(
          content: content,
          header: header
        )
      }
      .accessibilityElement(children: .contain)
    }

    func content() -> some View {
      VStack(alignment: .leading) {
        Text("Recent transactions")
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(contentPadding)
      .background(Color("Card Background"), in: RoundedRectangle(cornerRadius: contentPadding))
    }

    func header() -> some View {
      Label("Ampol Energy", systemImage: MainTabViewModel.Tab.energy.systemImage)
        .foregroundColor(.accentColor)
        .font(.system(.title3, design: .rounded).weight(.semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityAddTraits(.isHeader)
    }
  }
}
