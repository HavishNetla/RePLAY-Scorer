//
//  ScorerPickerView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScorerPickerView: View {
    @Binding var bindingProperty: Int
    
    var image: Image
    var title: String
    var color: Color = Color.gray
    var options: [String]
    
    var body: some View {        
        return VStack(alignment: .leading) {
            HStack {
                image
                    .iconModifier()
                    .foregroundColor(color)
                
                Text(title).lineLimit(nil).fixedSize(horizontal: false, vertical: true)
            }
            
            Picker(title, selection: $bindingProperty) {
                ForEach(0 ..< options.count) { i in
                    if(self.options.indices.contains(0)) {
                        Text(self.options[i])
                    }
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .labelsHidden()
            .frame(maxWidth: Constants.pickerMaxWidth)
        }
    }
}

struct ScorerPickerView_Previews: PreviewProvider {
    @State static var x: Int = 0
    static var previews: some View {
        ScorerPickerView(
            bindingProperty: $x,
            image: Image(systemName:"cloud.heavyrain.fill"),
            title: "Part of the innovation Project is touchingaaaaasdasdasdasd",
            options: ["None", "RePlayLogo", "Bench Gray Area"])
    }
}
