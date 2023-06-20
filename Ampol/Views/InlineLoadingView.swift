//
//  InlineLoadingView.swift
//  Ampol
//
//  Created by Brett Best on 21/6/2023.
//  Copyright © 2023 Ampol Australia Petroleum Pty Ltd. All rights reserved.
//

import SwiftUI

struct InlineLoadingView: View {
  let label: Text

  var body: some View {
    VStack(spacing: 16) {
      ProgressView()
        .controlSize(.large)
        .tint(.accentColor)
      label
        .multilineTextAlignment(.center)
    }
    .padding(16)
  }
}
