//
//  Bench.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/9/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct BenchHelperView: View {
    var body: some View {
        HelperView(title: "M04 Bench", view: AnyView(VStack(alignment: .leading, spacing: 16) {
            Image("Bench")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("The robot removes the backrest, flattens the bench, and gets cubes into the hopscotch spaces.")
            
            Text("• If the bench is down flat: ") + Text("10").foregroundColor(.red)
            Text("• If the bench is down flat: ") + Text("10").foregroundColor(.red)
            Text("• If the backrest is completely out of both of its holes: ") + Text("15").foregroundColor(.red)

        }))
    }
}

struct Bench_Previews: PreviewProvider {
    static var previews: some View {
        BenchHelperView()
    }
}
