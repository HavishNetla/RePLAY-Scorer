//
//  ScorerStepperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScorerStepperView: View {
    @Binding var bindingProperty: Int
    
    var image: Image
    var title: String
    var description: String
    var color: Color = Color.gray
    var bounds: ClosedRange<Int>
    
    var body: some View {
        Stepper(value: $bindingProperty, in: bounds) {
            HStack {
                image
                    .iconModifier()
                    .foregroundColor(color)
                
                Text("\(title): \(bindingProperty)")
                //                    .contextMenu {
                //                        VStack {
                //                            Text("\(description)").lineLimit(nil)
                //                        }
            }.lineLimit(nil)
        }
    }
}


struct ScorerStepperView_Previews: PreviewProvider {
    @State static var x: Int = 2
    
    static var previews: some View {
        ScorerStepperView(
            bindingProperty: $x,
            image: Image(systemName:"cloud.heavyrain.fill"),
            title: "Number of cubes in the frame or target",
            description: "test",
            bounds: 0...20
        )
    }
}
