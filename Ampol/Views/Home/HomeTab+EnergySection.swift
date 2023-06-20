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
    @ScaledMetric var billsSpacing = 20

    @ObservedObject var ampolEnergyAccountController: AmpolEnergyAccountController

    var body: some View {
      VStack(spacing: sectionSpacing) {
        Section(
          content: content,
          header: header
        )
      }
      .accessibilityElement(children: .contain)
      .onAppear {
        ampolEnergyAccountController.refresh()
      }
    }

    func header() -> some View {
      Label("Ampol Energy", systemImage: MainTabViewModel.Tab.energy.systemImage)
        .foregroundColor(.accentColor)
        .font(.system(.title3, design: .rounded).weight(.semibold))
        .frame(maxWidth: .infinity, alignment: .leading)
        .accessibilityAddTraits(.isHeader)
    }

    func content() -> some View {
      VStack(alignment: .leading) {
        switch ampolEnergyAccountController.state {
        case .initial, .loading: loadingView()
        case .success(let energyBills): successView(energyBills: energyBills)
        case .failure(let error): failureView(error: error)
        }
      }
      .frame(maxWidth: .infinity, alignment: .leading)
      .padding(contentPadding)
      .background(Color("Card Background"), in: RoundedRectangle(cornerRadius: contentPadding))
    }

    func loadingView() -> some View {
      InlineLoadingView(label: Text("Loading your energy information…"))
        .frame(maxWidth: .infinity)
    }

    @ViewBuilder
    func successView(energyBills: [EnergyBillDTO]) -> some View {
      VStack(alignment: .leading, spacing: contentPadding) {
        Text("Recent bills")
          .font(.system(.headline, design: .rounded))
          .foregroundColor(Color("Card Headline"))
        VStack(alignment: .leading, spacing: billsSpacing) {
          ForEach(energyBills) { energyBill in
            EnergyBillCardView(energyBill: energyBill)
          }
        }
      }
    }

    func failureView(error: Error) -> some View {
      Text(error.localizedDescription)
    }
  }
}
