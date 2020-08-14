//
//  PullUpHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct PullUpHelperView: View {
    var body: some View {
        HelperView(title: "M06 Pull-Up Bar", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Pull Up Bar")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot passes completely under the bar any time. Separately, it is held off the mat by the bar at the end of the match.")
            
            Text("• If the robot passes completely through the pull-up bar’s upright frame at any time: ") + Text("15 max").foregroundColor(.red)
            Text("• If the pull-up bar holds 100% of the robot up off the mat at the end of the match: ") + Text("30").foregroundColor(.red)
            
            Text(
                """
A “pass through” can score northward or southward, but only one way and only one time. A “pass through” scores at the time it happens. This is a rule R22 exception.

For the “held up” score, you cannot score this and M07 in the same match.
""").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
        }))
    }
}

struct PullUpHelperView_Previews: PreviewProvider {
    static var previews: some View {
        PullUpHelperView()
    }
}
