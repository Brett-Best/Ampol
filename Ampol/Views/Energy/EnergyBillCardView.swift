//
//  EnergyBillCardView.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct EnergyBillCardView: View {
  let energyBill: EnergyBillDTO

  @ScaledMetric var contentSpacing = 6

  var body: some View {
    VStack(alignment: .leading, spacing: contentSpacing) {
      Label(
        "\(energyBill.billingReference) • \(energyBill.issueDate, format: .dateTime.year(.defaultDigits).month(.abbreviated).day(.defaultDigits))",
        systemImage: "number.square.fill"
      )

      Label(
        "Due by \(energyBill.dueDate, format: .dateTime.year(.defaultDigits).month(.abbreviated).day(.defaultDigits))",
        systemImage: "calendar.badge.exclamationmark"
      )
      .symbolRenderingMode(.multicolor)

      Label("\(energyBill.averageDailyUsage, format: .number)/kWh/day", systemImage: "bolt.circle.fill")
        .symbolRenderingMode(.multicolor)

      Label("\(energyBill.amountDue, format: .currency(code: "AUD"))", systemImage: "cart.fill.badge.minus")
        .symbolRenderingMode(.multicolor)
    }
    .frame(maxWidth: .infinity, alignment: .leading)
    .accessibilityElement(children: .combine)
  }
}
