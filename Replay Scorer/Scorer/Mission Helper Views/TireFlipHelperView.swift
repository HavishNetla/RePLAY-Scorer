//
//  TireFlipHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct TireFlipHelperView: View {
    var body: some View {
        HelperView(title: "M09 Tire Flip", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Tire Flip")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot flips tires so their white centers face up and moves them into their large target circle.")
            
            Text("• If the light (blue tread) tire is white center up: å") + Text("10").foregroundColor(.red)
            Text("• If the heavy (black tread) tire is white center up: ") + Text("15").foregroundColor(.red)
            Text("• If white-center-up tires are completely in the large target circle: ") + Text("5 each").foregroundColor(.red)
            Text("• For all scores, the tire needs to be resting on only the mat.")
            
            Text("If the heavy tire crosses the red flip line at any time, even partly, it scores zero. The flip line runs all the way north to south. Only part of it is shown.").foregroundColor(.blue)
        }))
    }
}

struct TireFlipHelperView_Previews: PreviewProvider {
    static var previews: some View {
        TireFlipHelperView()
    }
}
