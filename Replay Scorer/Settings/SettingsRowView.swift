//
//  SettingsRowView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SettingsRowView: View {
    var image: Image
    var imageColor: Color
    var title: String
    var showChevron: Bool
    
    var body: some View {
        HStack {
            image
                .iconModifier()
                .foregroundColor(imageColor)

            Text(title)
                .foregroundColor(.primary)

            Spacer()

            if showChevron {
                Image(systemName: "chevron.right")
                    .foregroundColor(Color(UIColor.systemGray))
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(image: Image(systemName: "info.circle.fill"), imageColor: Color.orange, title: "About", showChevron: true)
    }
}
