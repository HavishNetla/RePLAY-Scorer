//
//  HelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct HelperView: View {
    var title: String
    var view: AnyView
    
    var body: some View {
        List {
            Section() {
                view
            }
        }
        .environment(\.horizontalSizeClass, .none)
        .navigationBarTitle(title)
    }
}

struct HelperView_Previews: PreviewProvider {
    static var previews: some View {
        HelperView(title: "testing", view: AnyView(Text("heya")))
    }
}
