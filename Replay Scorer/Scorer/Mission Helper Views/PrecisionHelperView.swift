//
//  PrecisionHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct PrecisionHelperView: View {
    var body: some View {
        HelperView(title: "M15 Precision", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Precision")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The less often you interrupt the robot outside home, the more points you keep.")
            
            MultiColorTextView(text: [
                MText(str: "• If the number of precision tokens left on the field is 1: "),
                MText(str: "5", color: Color.red),
                MText(str: ", 2: "),
                MText(str: "10", color: Color.red),
                MText(str: ", 3: "),
                MText(str: "20", color: Color.red),
                MText(str: ", 4: "),
                MText(str: "20", color: Color.red),
                MText(str: ", 5: "),
                MText(str: "20", color: Color.red),
                MText(str: ", 6: "),
                MText(str: "20", color: Color.red)
            ])
            Text("See rules R05, R15, R16, and R19.").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }))
    }
}

struct PrecisionHelperView_Previews: PreviewProvider {
    static var previews: some View {
        PrecisionHelperView()
    }
}
