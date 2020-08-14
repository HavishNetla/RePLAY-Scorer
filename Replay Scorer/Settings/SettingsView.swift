//
//  SettingsView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Info").font(.headline)) {
                    SettingsRowView(
                        image: Image(systemName: "square.and.arrow.up"),
                        imageColor: Color.blue,
                        title: "Share RePlay scorer",
                        showChevron: true
                    )
                    ZStack {
                        SettingsRowView(
                            image: Image(systemName: "info.circle.fill"),
                            imageColor: Color.blue,
                            title: "About",
                            showChevron: true
                        )
                        NavigationLink(destination: AboutView()) {
                            EmptyView()
                        }
                    }
                }
                
            }
            .listStyle(GroupedListStyle())
            .environment(\.horizontalSizeClass, .regular)
            .navigationBarTitle("Settings")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
