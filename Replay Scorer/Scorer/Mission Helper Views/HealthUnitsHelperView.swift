//
//  HealthUnitsHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct HealthUnitsHelperView: View {
    var body: some View {
        HelperView(title: "M14 Health Unit", view: AnyView(VStack(spacing: 16) {
            Image("Health Units")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot collects health units from around the field and moves them to target areas.")
            
            Text("If health units are:\n• Touching either the RePLAY logo or the gray area around the bench: ") + Text("5 each").foregroundColor(.red)
            
            Text("• Looped over a pull-up bar post as shown – maximum of four – and touching no equipment: ") + Text("10 each").foregroundColor(.red)
        }))
    }
}

struct HealthUnitsHelperView_Previews: PreviewProvider {
    static var previews: some View {
        HealthUnitsHelperView()
    }
}
