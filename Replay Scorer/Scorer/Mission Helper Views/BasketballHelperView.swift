//
//  Basketball.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct BasketballHelperView: View {
    var body: some View {
        HelperView(title: "M05 Basketball", view: AnyView(VStack(alignment: .leading,spacing: 16) {
            Image("Basketball")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot raises the crate up the post and gets a cube into it.")
            
            Text("• If there is a cube in the crate: ") + Text("15").foregroundColor(.red)
            Text("• If the crate rests on the middle height’s white stopper: ") + Text("15").foregroundColor(.red)
            Text("• If the crate rests on the top height’s white stopper: ") + Text("25").foregroundColor(.red)

            Text("Only one cube can score in the crate. Score top height or middle height, not both.").foregroundColor(.blue)
        }))
    }
}

struct Basketball_Previews: PreviewProvider {
    static var previews: some View {
        BasketballHelperView()
    }
}
