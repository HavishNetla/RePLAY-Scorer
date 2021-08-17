//
//  ScorerToggleView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScorerToggleView: View {
    @Binding var bindingProperty: Bool
    
    var image: Image
    var title: String
    var color: Color = Color(.systemBlue)
    
    var body: some View {
        Toggle(isOn: $bindingProperty) {
            HStack {
                image
                    .iconModifier()
                    .foregroundColor(.white)
                    .colorMultiply(bindingProperty ? color : Color(.systemGray2))
                    .animation(.linear)
                
                
                Text(title)
                
            }
        }
//        .contextMenu {
//            
//            Text("\(description)").lineLimit(nil)
//            
//        }
    }
}

struct ScorerToggleView_Previews: PreviewProvider {
    @State static var x: Bool = false
    
    static var previews: some View {
        ScorerToggleView(
            bindingProperty: $x,
            image: Image(systemName: "cloud.heavyrain.fill"),
            title: "titletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitletitle"
        )
    }
}
