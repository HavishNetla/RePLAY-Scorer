//
//  AboutView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("About the Developer").font(.system(size: 18))
                    .bold()
                
                Text("👋 Hey, I'm Havish Netla, a highschool developer")
                
                Group {
                    Text("I'm currently the coach of FLL Team ") +
                        Text("#37840 Mystical Geniuses.").foregroundColor(Color(UIColor.systemIndigo)).bold()
                }
                
                Text("About the App").font(.system(size: 18))
                    .bold().padding(.top)
                Text("The scorer automatically detects \"impossible\" situations and automatically corrects them. If you think there is something wrong with the scoring algorithm, please contact me.")
            }
            
            Spacer()
            
        }
        .padding()
        .navigationBarTitle("About", displayMode: .inline)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
