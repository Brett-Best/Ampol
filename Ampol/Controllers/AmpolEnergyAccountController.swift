//
//  AmpolEnergyAccountController.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

class AmpolEnergyAccountController: ObservableObject {
  let ampolEnergyAccountDataProvider: AmpolEnergyAccountDataProvider

  @Published var state: OperationState<[EnergyBillDTO], Error> = .initial

  init(ampolEnergyAccountDataProvider: AmpolEnergyAccountDataProvider) {
    self.ampolEnergyAccountDataProvider = ampolEnergyAccountDataProvider
  }

  func refresh() {
    guard !state.isLoading else {
      return
    }

    Task { @MainActor in
      do {
        let energyBills = try await ampolEnergyAccountDataProvider.fetchEnergyBills()
        withAnimation {
          state = .success(energyBills)
        }
      } catch {
        withAnimation {
          state = .failure(error)
        }
      }
    }
  }
}
