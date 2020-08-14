//
//  SummaryRowView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SummaryRowView: View {
    var score: Int
    
    var label: String
    var image: Image
    
    var body: some View {
        HStack {
            image
                .iconModifier()
            
            Text("\(label)").bold()
            Text("\(score)")
                .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                .padding(.trailing)
            
        }
    }
}

struct SummaryRowView_Previews: PreviewProvider {
    @State static var score = 69
    static var previews: some View {
        SummaryRowView(score: score, label: "Total Points", image: Image(systemName: "t.circle.fill"))
    }
}
