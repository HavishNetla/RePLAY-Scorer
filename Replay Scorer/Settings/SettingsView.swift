//
//  SettingsView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/7/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI
//https://apps.apple.com/ee/app/replay-scorer/id1527485419
import StoreKit

struct SettingsView: View {
    var list: some View {
        List {
            Section {
                //            NavigationLink(destination: AboutView()) {
                //                SettingsRowView(
                //                    image: "info.circle.fill",
                //                    imageColor: .white,
                //                    bgColor: .green,
                //                    title: "About"
                //                )
                //            }
                
                Button(action: {
                    guard let urlShare = URL(string: "https://apps.apple.com/ee/app/replay-scorer/id1527485419") else { return }
                    let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
                    
                    UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
                    
                }, label: {
                    SettingsRowView(
                        image: "square.and.arrow.up",
                        imageColor: .white,
                        bgColor: .orange,
                        title: "Share Cargo Connect"
                    )
                })
                
                
                Button(action: {
                    print("test")
                    if let url = URL(string: "mailto:netlahavish@gmail.com?subject=Feedback") {
                        if #available(iOS 10.0, *) {
                            UIApplication.shared.open(url)
                            print("asd")
                        } else {
                            UIApplication.shared.openURL(url)
                            print("asd1")
                        }
                    }
                }, label: {
                    SettingsRowView(
                        image: "at",
                        imageColor: .white,
                        bgColor: .blue,
                        title: "Contact"
                    )
                })
                
                SettingsRowView(
                    image: "star.fill",
                    imageColor: .white,
                    bgColor: .yellow,
                    title: "Rate Cargo Connect"
                ).onTapGesture {
                    rateApp()
                }
                
            }
            
            HStack(alignment: .center, content: {
                Spacer()
                Text("Created by Havish Netla")
                Spacer()
            })
            
        }.navigationBarTitle("Settings", displayMode: .inline)
    }
    
    var body: some View {
        
        if #available(iOS 14.0, *) {
            list
                .listStyle(InsetGroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
            
            
            //.navigationBarTitle("Settings", displayMode: .inline)
        } else {
            list
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
            
            
            //.navigationBarTitle("Settings", displayMode: .inline)
            
        }
        
    }
    
    func rateApp() {
        if false {
            SKStoreReviewController.requestReview()
            
        } else if let url = URL(string: "itms-apps://itunes.apple.com/app/" + "1527485419") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
