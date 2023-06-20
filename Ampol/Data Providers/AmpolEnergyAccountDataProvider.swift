//
//  AmpolEnergyAccountDataProvider.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

protocol AmpolEnergyAccountDataProvider {
  func fetchEnergyBills() async throws -> [EnergyBillDTO]
}
