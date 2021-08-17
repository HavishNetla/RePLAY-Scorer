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
            Text(getDate()).font(.caption2).opacity(0.5)
            Group {
                MissionLabel(labelText: "M00", name: "Equipment Inspection Bonus", score: scorer.equipmentInspectionBonus.totalPoints)
                MissionLabel(labelText: "M01", name: "Innovation ", score: scorer.innovationProject.totalPoints)
                MissionLabel(labelText: "M02", name: "Unused Capacity", score: scorer.unusedCapacity.totalPoints)
                MissionLabel(labelText: "M03", name: "Unload Cargo Plane", score: scorer.unloadCargoPlane.totalPoints)
                MissionLabel(labelText: "M04", name: "Transportation Journey", score: scorer.transportationJourney.totalPoints)
                MissionLabel(labelText: "M05", name: "Switch Engine", score: scorer.switchEngine.totalPoints)
                MissionLabel(labelText: "M06", name: "Accident Avoidance", score: scorer.accidentAvoidance.totalPoints)
                MissionLabel(labelText: "M07", name: "Unload Cargo Ship", score: scorer.unloadCargoShip.totalPoints)
                MissionLabel(labelText: "M08", name: "Air Drop", score: scorer.airDrop.totalPoints)
            }
            
            Group {
                MissionLabel(labelText: "M09", name: "Train Tracks", score: scorer.trainTracks.totalPoints)
                MissionLabel(labelText: "M10", name: "Sorting Center", score: scorer.sortingCenter.totalPoints)
                MissionLabel(labelText: "M11", name: "Home Delivery", score: scorer.homeDelivery.totalPoints)
                MissionLabel(labelText: "M12", name: "Large Delivery", score: scorer.largeDelivery.totalPoints)
                MissionLabel(labelText: "M13", name: "Platooning Trucks", score: scorer.platooningTrucks.totalPoints)
                MissionLabel(labelText: "M14", name: "Bridge", score: scorer.bridge.totalPoints)
                MissionLabel(labelText: "M15", name: "Load Cargo", score: scorer.loadCargo.totalPoints)
                MissionLabel(labelText: "M16", name: "CARGO CONNECT", score: scorer.cargoConnect.totalPoints)
                MissionLabel(labelText: "M17", name: "Precision Tokens", score: scorer.precision.totalPoints)
            }
            
            SummaryRowView(
                score: scorer.totalPoints,
                label: "Total Points",
                image: Image(systemName: "t.circle.fill")
            )
            .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
            .background(Color.green)
            .cornerRadius(10.0)
            .shadow(color: .green, radius: 7, x: 0.0, y: 0.0)
            .padding(.top)
            
            HStack {
                Spacer()
                Footer().padding(.top)
            }
            
        })
        .padding()
        .background(colorScheme == .dark ?
                        Color.black :
                        Color.white)
    }
    
    func getDate() -> String {
        let time = Date()
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "MMM d, yyyy, h:mm a"
        let stringDate = timeFormatter.string(from: time)
        
        return stringDate
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

struct Footer: View {
    var body: some View {
        HStack {
            Text("via Cargo Connect").font(.caption)
            Image(uiImage: UIImage(named: "AppIcon") ?? UIImage()).cornerRadius(3).scaleEffect(1.05)
        }.opacity(0.5)
    }
    
    
}

struct SummaryView_Previews: PreviewProvider {
    static var previews: some View {
        SummaryView(scorer: Scorer())
    }
}
