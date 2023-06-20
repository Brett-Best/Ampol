//
//  OperationState.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

enum OperationState<Success, Failure> where Failure: Error {
  case initial
  case loading
  case success(Success)
  case failure(Failure)
}

extension OperationState: Equatable where Success: Equatable, Failure: Equatable {}
extension OperationState: Hashable where Success: Hashable, Failure: Hashable {}

extension OperationState {
  var isInitial: Bool {
    if case .initial = self {
      return true
    } else {
      return false
    }
  }

  var isLoading: Bool {
    if case .loading = self {
      return true
    } else {
      return false
    }
  }

  var isSuccess: Bool {
    if case .success = self {
      return true
    } else {
      return false
    }
  }

  var isFailure: Bool {
    if case .failure = self {
      return true
    } else {
      return false
    }
  }
}
