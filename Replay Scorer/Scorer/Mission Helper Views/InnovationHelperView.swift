//
//  InnovationHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/8/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct InnovationHelperView: View {
    var body: some View {
        HelperView(title: "M01 Innovation Project", view: AnyView(VStack(spacing: 16) {
            Image("Innovation Project")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            Text("The robot moves your Innovation Project onto the RePLAY logo or the gray area around the bench (M04).")
            
            Group {
                Text("""
    If your Innovation Project:
    • Is made of at least two white LEGO pieces
    • Measures at least as long as four LEGO studs in at least one direction
    • Has any part of it touching either the RePLAY logo or the gray area around the bench:
    """) +
                    Text(" 20 max").foregroundColor(.red)
            }
            
            Text("Build and bring a single model that represents your solution to the Innovation Project. The one shown here is just an example. CAUTION: Your Innovation Project counts as equipment. Building of your Innovation Project model is suggested in Session 9 in the Engineering Notebook. Read rule R01 and all the rules carefully and often so you can avoid surprises at competitions.").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)

        }))
    }
}

struct InnovationHelperView_Previews: PreviewProvider {
    static var previews: some View {
        InnovationHelperView()
    }
}
