//
//  SummaryView.swift
//  Cargo Connect Scorer
//
//  Created by Havish Netla on 8/9/21.
//

import SwiftUI

struct SummaryView: View {
    @Environment(\.colorScheme) var colorScheme

    var scorer: Scorer
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            Group {
                MissionLabel(labelText: "M00", name: "Equipment Inspection Bonus", score: scorer.equipmentInspectionBonus.totalPoints)
                MissionLabel(labelText: "M01", name: "Innovation Project", score: scorer.innovationProject.totalPoints)
                MissionLabel(labelText: "M02", name: "Step Counter", score: scorer.stepCounter.totalPoints)
                MissionLabel(labelText: "M03", name: "Slide", score: scorer.slide.totalPoints)
                MissionLabel(labelText: "M04", name: "Bench", score: scorer.bench.totalPoints)
                MissionLabel(labelText: "M05", name: "Basketball", score: scorer.basketball.totalPoints)
                MissionLabel(labelText: "M06", name: "Pull-Up Bar", score: scorer.pullUpBar.totalPoints)
                MissionLabel(labelText: "M07", name: "Robot Dance", score: scorer.robotDance.totalPoints)
                MissionLabel(labelText: "M08", name: "Boccia", score: scorer.boccia.totalPoints)
            }
            
            Group {
                MissionLabel(labelText: "M09", name: "Tire Flip", score: scorer.tireFlip.totalPoints)
                MissionLabel(labelText: "M10", name: "Cell Phone", score: scorer.cellPhone.totalPoints)
                MissionLabel(labelText: "M11", name: "Treadmill", score: scorer.treadmill.totalPoints)
                MissionLabel(labelText: "M12", name: "Row Machine", score: scorer.rowMachine.totalPoints)
                MissionLabel(labelText: "M13", name: "Weight Machine", score: scorer.weightMachine.totalPoints)
                MissionLabel(labelText: "M14", name: "Health Units", score: scorer.healthUnits.totalPoints)
                MissionLabel(labelText: "M15", name: "Precision", score: scorer.precision.totalPoints)
            }
            
            SummaryRowView(
                score: scorer.totalPoints,
                label: "Total Points",
                image: Image(systemName: "t.circle.fill")
            )
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
            .background(Color.green)
            .cornerRadius(10.0)
            .padding(.top)
            
            HStack {
                Spacer()
                Ad().padding()
            }
            
        })
        .padding()
        .background(colorScheme == .dark ?
                                    Color.black :
                                    Color.white)
    }
}

struct MissionLabel: View {
    var labelText: String
    var name: String
    var score: Int
    var body: some View {
        HStack {
            Text(labelText)
                .font(Font.system(.headline, design: .monospaced))
                .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                .background(Color.gray)
                .cornerRadius(5.0)
                .foregroundColor(.white)
            
            Text("\(name): ")
                .font(.headline)
                .foregroundColor(.primary)

            Text("\(score)").font(.headline)
                .foregroundColor(.primary)
        }
    }
}

struct Ad: View {
    var body: some View {
        HStack {
            Text("via Cargo Connect").font(.subheadline)
            Image(uiImage: UIImage(named: "AppIcon") ?? UIImage()).cornerRadius(3).scaleEffect(1.15)
        }.opacity(0.5)
    }
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(scorer: Scorer())
        Ad()
    }
}
