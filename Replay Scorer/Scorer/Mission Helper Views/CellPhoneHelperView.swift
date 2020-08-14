//
//  CellPhoneHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct CellPhoneHelperView: View {
    var body: some View {
        HelperView(title: "M10 Cell Phone", view: AnyView(VStack(spacing: 16) {
            Image("Cell Phone")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("The robot flips the cell phone white side up.")
            
            Text(
                "• If the cell phone is white side up and resting on only the mat: 15")
        }))
    }
}

struct CellPhoneHelperView_Previews: PreviewProvider {
    static var previews: some View {
        CellPhoneHelperView()
    }
}
