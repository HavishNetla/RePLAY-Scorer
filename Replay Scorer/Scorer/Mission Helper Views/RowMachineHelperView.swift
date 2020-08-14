//
//  RowMachineHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct RowMachineHelperView: View {
    var body: some View {
        HelperView(title: "M12 Row Machine", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Row Machine")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot moves the free wheel out of the large circle and into the small target circle.")

            Text("If the free wheel is:\n• Completely outside the large circle: ") + Text("15").foregroundColor(.red)
            Text("• Completely in the small circle: ") + Text("15 added").foregroundColor(.red)
        }))
    }
}

struct RowMachineHelperView_Previews: PreviewProvider {
    static var previews: some View {
        RowMachineHelperView()
    }
}
