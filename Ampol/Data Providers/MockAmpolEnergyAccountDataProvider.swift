//
//  MockAmpolEnergyAccountDataProvider.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

struct MockAmpolEnergyAccountDataProvider: AmpolEnergyAccountDataProvider {
  func fetchEnergyBills() async throws -> [EnergyBillDTO] {
    try await Task.sleep(nanoseconds: UInt64.random(in: 500_000_000...2_000_000_000))
    return EnergyBillDTO.generateFakeEnergyBills()
  }
}
