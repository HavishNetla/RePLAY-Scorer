//
//  ImageModifier.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

extension Image {
    func iconModifier() -> some View {
        self
            .font(.system(size: Constants.sfSymbolSize))
            .frame(minWidth: Constants.iconMinWidth)
            .accessibility(hidden: true)
    }
}
