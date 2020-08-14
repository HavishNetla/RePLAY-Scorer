//
//  ScoreSummaryView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScoreSummaryView: View {
    @Binding var scorer: Scorer
    
    var body: some View {
        Section(header: Text("Score Summary").font(.headline)) {
            SummaryRowView(
                score: scorer.totalPoints,
                label: "Total Points",
                image: Image(systemName: "t.circle.fill")
            ).listRowBackground(Color.green)
            
        }
    }
}

struct ScoreSummaryView_Previews: PreviewProvider {
    @State static var scorer = Scorer()
    static var previews: some View {
        ScoreSummaryView(scorer: $scorer)
    }
}
