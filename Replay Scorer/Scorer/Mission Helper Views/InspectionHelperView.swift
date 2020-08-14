//
//  InspectionHelperView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/8/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct InspectionHelperView: View {
    var body: some View {
        HelperView(title: "M00 Inspection Bonus", view: AnyView(
            VStack {
                HStack(spacing: 16) {
                    Image("Small Inspection Area")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding()
                    Text("“Doing the same with less” can save time and space.")
                }
                Group {
                    Text("• If all your equipment fits in the small inspection space:   ")
                    + Text("25").foregroundColor(.red)
                }
                Spacer()
                
                Text("When you get to each match, remove all your equipment from any containers and show the referee you can fit it all in the small inspection space. See Rule 09 for details.").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
        ))
    }
}


struct InspectionHelperView_Previews: PreviewProvider {
    static var previews: some View {
        InspectionHelperView()
    }
}
