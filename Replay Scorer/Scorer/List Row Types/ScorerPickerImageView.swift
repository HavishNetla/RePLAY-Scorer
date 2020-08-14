//
//  ScorerPickerImageView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScorerPickerImageView: View {
    @Binding var bindingProperty: Int
    
    var image: Image
    var title: String
    var description: String
    var options: [String]
    
    var body: some View {
        print("\(title) - \(options)")
        
        return VStack(alignment: .leading) {
            Picker(title, selection: $bindingProperty) {
                //Text("testing")
                ForEach(0 ..< options.count) { i in
                    if(self.options.indices.contains(0)) {
                        Text(self.options[i])
                    }
                }
            }
            .frame(maxWidth: Constants.pickerMaxWidth)
        }
    }
    
    struct ScorerPickerImageView_Previews: PreviewProvider {
        @State static var x: Int = 0
        static var previews: some View {
            Form {
                
                
                ScorerPickerImageView(
                    bindingProperty: $x,
                    image: Image(systemName:"cloud.heavyrain.fill"),
                    title: "Part of the innovation Project is touchingaaaaasdasdasdasd",
                    description: "Description",
                    options: ["asd"]
                )
            }
        }
    }
}
