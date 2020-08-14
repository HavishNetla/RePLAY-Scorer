//
//  TreadmillHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct TreadmillHelperView: View {
    var body: some View {
        HelperView(title: "M11 Treadmill", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Treadmill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Text("The robot spins the rollers to move the pointer as far clockwise as possible.")
            
            MultiColorTextView(text: [
                MText(str: "• If the robot spins the rollers so the pointer points to gray: "),
                MText(str: "5", color: Color.red),
                MText(str: ", red: "),
                MText(str: "10", color: Color.red),
                MText(str: ", orange: "),
                MText(str: "15", color: Color.red),
                MText(str: ", yellow: "),
                MText(str: "20", color: Color.red),
                MText(str: ", light green: "),
                MText(str: "25", color: Color.red),
                MText(str: ", dark green: "),
                MText(str: "30", color: Color.red),
            ])
            
            Text("If a position is not clear, imagine a needle at the end of the pointer. The edge of a color counts as that color. If the robot moves the pointer by touching the pointer, M11 scores zero").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }))
    }
}

struct TreadmillHelperView_Previews: PreviewProvider {
    static var previews: some View {
        TreadmillHelperView()
    }
}
