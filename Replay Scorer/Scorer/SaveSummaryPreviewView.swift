//
//  SaveSummaryPreviewView.swift
//  Cargo Connect Scorer
//
//  Created by Havish Netla on 8/9/21.
//

import SwiftUI

struct SaveSummaryPreviewView: View {
    var scorer: Scorer
    
    @State var themeSelection: String
    
    var summary: some View {
        SummaryView(scorer: scorer)
    }
    
    var body: some View {
        VStack {
            summary.cornerRadius(15).scaleEffect(0.75)
            
            
            VStack {
                Picker("Theme", selection: $themeSelection) {
                    Text("Dark")
                    Text("Light")
                }.pickerStyle(SegmentedPickerStyle())
                .padding(EdgeInsets(top: 0, leading: 50, bottom: 0, trailing: 50))
            }
            
            Button(action: {
                UIImageWriteToSavedPhotosAlbum(summary.snapshot(), nil, nil, nil)
            }, label: {
                Text("Button")
            })
        }.padding()
        .background(Color(.systemGray6))
    }
}

struct SaveSummaryPreviewView_Previews: PreviewProvider {
    static var previews: some View {
        SaveSummaryPreviewView(scorer: Scorer(), themeSelection: "Dark")
    }
}
