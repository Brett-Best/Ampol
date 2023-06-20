//
//  EnergyBillDTO+Fake.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import Foundation

extension EnergyBillDTO {
  static func generateFakeEnergyBills() -> [Self] {
    let now = Date()

    return [
      .init(
        id: UUID(),
        billingReference: "B-2873832",
        issueDate: now.addingTimeInterval(-60 * 60 * 24 * 30),
        dueDate: now.addingTimeInterval(60 * 60 * 24 * 5),
        amountDue: 104.78,
        averageDailyUsage: 12.89,
        averageDailyUsageLastYear: 10.5,
        averageCostPerDay: 3.49
      ),
      .init(
        id: UUID(),
        billingReference: "B-4877833",
        issueDate: now,
        dueDate: now.addingTimeInterval(60 * 60 * 24 * 35),
        amountDue: 143.65,
        averageDailyUsage: 13.75,
        averageDailyUsageLastYear: 12.1,
        averageCostPerDay: 4.79
      )
    ]
  }
}
