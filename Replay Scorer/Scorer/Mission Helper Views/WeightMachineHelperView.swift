//
//  WeightMachineHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct WeightMachineHelperView: View {
    var body: some View {
        HelperView(title: "M13 Weight Machine", view: AnyView(VStack(spacing: 16) {
            Image("Weight Machine")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Before the match, you hand select the machine’s lever setting. During the match, the robot moves the lever until the little yellow stopper falls.")
                        
            MultiColorTextView(text: [
                MText(str: "• If the stopper is under the lever and lever setting is blue: "),
                MText(str: "10", color: Color.red),
                MText(str: ", magenta: "),
                MText(str: "15", color: Color.red),
                MText(str: ", yellow: "),
                MText(str: "20", color: Color.red)
            ])
            Text("Before the match starts, you slide the lever where you want, with the stopper on top. This is an exception to rule R12. The lever setting is the color under the east face of the east green bar").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }))
    }
}

struct WeightMachineHelperView_Previews: PreviewProvider {
    static var previews: some View {
        WeightMachineHelperView()
    }
}
