//
//  SettingsRowView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SettingsRowView: View {
    var image: String
    var imageColor: Color
    var bgColor: Color
    
    var title: String
    
    var body: some View {
        HStack {
            SquareIconView(image: image, color: bgColor, stroke: imageColor)


            Text(title)
                .foregroundColor(.primary)
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(image: "at", imageColor: Color.orange, bgColor: .blue, title: "About")
    }
}
