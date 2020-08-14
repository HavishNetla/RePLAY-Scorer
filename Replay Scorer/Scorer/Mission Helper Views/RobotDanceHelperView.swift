//
//  RobotDanceHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct RobotDanceHelperView: View {
    var body: some View {
        HelperView(title: "M07 Robot Dance", view: AnyView(VStack(spacing: 16) {
            Image("Dance Floor")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot is dancing on the dance floor at the end of the match.")
            
            Text("• If the robot’s controller is at least partly over the dance floor in a “dancing” motion at the end of the match: ") + Text("20").foregroundColor(.red)
            
            Text("Any silly or skilled repetitive action counts as dancing – do something fun! For M07, you cannot score this plus the “held up” score from M06 in the same match.").foregroundColor(.blue)
        }))
    }
}

struct RobotDanceHelperView_Previews: PreviewProvider {
    static var previews: some View {
        RobotDanceHelperView()
    }
}
