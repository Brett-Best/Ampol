//
//  HomeTab+ChargeSection.swift
//  Ampol
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

extension HomeTab {
  struct ChargeSection: View {
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
        Text(
          """
          Quia aut deserunt ut alias accusamus sint aperiam tempora impedit a.

          Qui voluptas harum enim eos.

          Vel dolorem dignissimos aut vel non praesentium.
          """
        )
        .redacted(reason: .placeholder)
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(contentPadding)
      .background(Color("Card Background"), in: RoundedRectangle(cornerRadius: contentPadding))
    }

    func header() -> some View {
      Label("AmpCharge", systemImage: MainTabViewModel.Tab.charge.systemImage)
        .foregroundColor(.accentColor)
        .font(.system(.title3, design: .rounded).weight(.semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityAddTraits(.isHeader)
    }
  }
}
