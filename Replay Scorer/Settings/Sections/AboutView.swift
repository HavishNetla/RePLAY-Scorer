//
//  AboutView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        List {
            Section() {
                Text("About RePLAY Scorer")
                    .font(.system(size: 28))
                    .bold()
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .center)
            }

            Section() {
                VStack(alignment: .leading, spacing: 16) {
                    Text("👋 Hey, I'm Havish Netla, a highschool developer")
                    
                    Group {
                        Text("Im currently the coach of FLL Team ") +
                            Text("#37840 Mystical Geniuses").foregroundColor(Color(UIColor.systemIndigo)).bold()
                    }
                }
            }
        }
        .listStyle(GroupedListStyle())
        .environment(\.horizontalSizeClass, .regular)
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
