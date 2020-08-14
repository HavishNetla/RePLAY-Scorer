//
//  StepCounterView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct StepCounterView: View {
    var body: some View {
        HelperView(title: "M02 Step Counter", view: AnyView(VStack(spacing: 16) {
            Image("Step Counter")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text("The robot slides the step counter slow and steady. The farther the “walk,” the better.")
                        
            MultiColorTextView(text: [
                MText(str: "If the bottom of the pointer is on magenta: "),
                MText(str: "10", color: Color.red),
                MText(str: ", yellow: "),
                MText(str: "15", color: Color.red),
                MText(str: ", blue: "),
                MText(str: "20", color: Color.red),

            ])
        }))
    }
}

struct StepCounterView_Previews: PreviewProvider {
    static var previews: some View {
        StepCounterView()
    }
}
