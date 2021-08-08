//
//  SectionHeaderView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SectionHeaderView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var showing: Bool
    var score: Int = 0
    
    var name: String = ""
    var missionNumber: Int = 0
    
    private var labelText: String = ""
    private var missionName: String = ""
    
    var helperView: some View {
        switch missionNumber {
        case 0:
            return AnyView(InspectionHelperView())
        case 1:
            return AnyView(InnovationHelperView())
        case 2:
            return AnyView(StepCounterView())
        case 3:
            return AnyView(SlideHelperView())
        case 4:
            return AnyView(BenchHelperView())
        case 5:
            return AnyView(BasketballHelperView())
        case 6:
            return AnyView(PullUpHelperView())
        case 7:
            return AnyView(RobotDanceHelperView())
        case 8:
            return AnyView(BocciaHelperView())
        case 9:
            return AnyView(TireFlipHelperView())
        case 10:
            return AnyView(CellPhoneHelperView())
        case 11:
            return AnyView(TreadmillHelperView())
        case 12:
            return AnyView(RowMachineHelperView())
        case 13:
            return AnyView(WeightMachineHelperView())
        case 14:
            return AnyView(HealthUnitsHelperView())
        case 15:
            return AnyView(PrecisionHelperView())
        default:
            return AnyView(PrecisionHelperView())
        }
    }
    
    init(showing: Binding<Bool>, score: Int, name: String, missionNumber: Int) {
        self._showing = showing
        self.score = score
        self.name = name
        self.missionNumber = missionNumber
        
        var x = name.components(separatedBy: " ")
        
        self.labelText = x[0]
        x.remove(at: 0)
        
        self.missionName = x.joined(separator: " ")        
    }
    var body: some View {
        HStack {
            NavigationLink(destination: helperView) {
                HStack {
                    Text(labelText).font(.headline)
                        .padding(EdgeInsets(top: 2, leading: 5, bottom: 2, trailing: 5))
                        .background(Color.gray)
                        .cornerRadius(5.0)
                        .foregroundColor(.white)
                    
                    Text("\(missionName): ")
                        .font(.headline)
                        .foregroundColor(.primary)

                    Text("\(score)").font(.headline)
                        .foregroundColor(
                            colorScheme == .dark ?
                                Color.white :
                                Color.black
                        )
                    
                }
            }
        }
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    @State static var isShowing = false
    
    static var previews: some View {
        SectionHeaderView(showing: $isShowing, score: 0, name: "M00 Innovation Project", missionNumber: 20)
    }
}
