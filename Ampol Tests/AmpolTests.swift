//
//  AmpolTests.swift
//  AmpolTests
//
//  Created by Brett Best on 20/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

@testable import Ampol
import SwiftUI
import XCTest

final class AmpolTests: XCTestCase {
  func testAppBodyType() {
    let app = AmpolApp()
    XCTAssertTrue(app.body is WindowGroup<MainTabView>)
  }
}
