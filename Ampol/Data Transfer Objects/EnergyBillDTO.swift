//
//  EnergyBillDTO.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import Foundation

struct EnergyBillDTO: Identifiable, Decodable {
  let id: UUID
  let billingReference: String
  let issueDate: Date
  let dueDate: Date
  let amountDue: Double
  let averageDailyUsage: Double
  let averageDailyUsageLastYear: Double?
  let averageCostPerDay: Double
}
