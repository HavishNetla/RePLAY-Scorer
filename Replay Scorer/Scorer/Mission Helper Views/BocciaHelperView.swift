//
//  BocciaHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct BocciaHelperView: View {
    var body: some View {
        HelperView(title: "M08 Boccia", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Boccia")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Boccia is an interactive mission with the opposing team. Talk with the other team so the robots send matching colored cubes onto the opposite field.")
            
            Text("• If both share models have sent only one cube anywhere onto the opposing field and those cubes color-match each other: ") + Text("25 for each team").foregroundColor(.red)
            
            Text("• If there are cubes completely in your frame or target: ") + Text("5 each cube").foregroundColor(.red)
            Text("• If there is at least one yellow cube completely in your target: ") + Text("10 added").foregroundColor(.red)
            
            Text(
                """
If there is equipment even partly in your frame, M08 scores zero for you (the opposing team is not affected).

If, like most teams, you have only your one practice table, your sent cube will simply go over your north wall during practice.

(Study the scoring examples as if both share models did share only one cube.)
""").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }))
    }
}


struct BocciaHelperView_Previews: PreviewProvider {
    static var previews: some View {
        BocciaHelperView()
    }
}
