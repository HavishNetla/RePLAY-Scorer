//
//  ScorerView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct ScorerView: View {
    @State var scorer = Scorer()
    @State var showingSettings = false
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        Section(header: Text("Information").font(.headline).foregroundColor(.primary)) {
                            HStack {
                                Image(systemName: "info.circle.fill")
                                    .iconModifier()
                                    .foregroundColor(.green)
                                    .animation(.linear)
                                
                                Text("Press on the mission title for more information")
                            }
                        }
                        MissionScorerView(scorer: $scorer)
                    }
                    .environment(\.horizontalSizeClass, .none)
                    .navigationBarTitle("Cargo Connect")
                    .navigationBarItems(
                        leading: //Show Settings Button
                            Button(action: {
                                let generator = UINotificationFeedbackGenerator()
                                
                                generator.notificationOccurred(.success)
                                
                                self.scorer.reset()
                            }) {
                                Image(systemName: "arrow.counterclockwise").imageScale(.large)
                            },
                        
                        trailing:
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                NavigationLink(destination: SettingsView()) {
                                    
                                    Image(systemName: "gear").imageScale(.large)
                                }
                            })
                            
                            
                    )
                    .onAppear {
                        self.updateScorerAssist()
                    }
                    Spacer()
                        .frame(height: 50)
                }
                
                
                VStack {
                    Spacer()
                    SummaryRowView(
                        score: scorer.totalPoints,
                        label: "Total Points",
                        image: Image(systemName: "t.circle.fill")
                    )
                    .padding(EdgeInsets(top: 15, leading: 10, bottom: 15, trailing: 10))
                    .background(Color.green)
                    .cornerRadius(10.0)
                    .shadow(color: .green, radius: 7, x: 0.0, y: 0.0)
                    .contextMenu(ContextMenu(menuItems: {
                        Button(action: {
                            self.scorer.reset()
                        }) {
                            Text("Reset")
                            Image(systemName: "arrow.counterclockwise")
                        }
                    }))
                }
                .padding()
            }
        }
        
    }
    
    private func updateScorerAssist() {
        let shouldAssist = UserDefaults.standard.bool(forKey: "shouldAssistScoring")
        self.scorer.assist = shouldAssist
    }
}

struct Blur: UIViewRepresentable {
    var style: UIBlurEffect.Style = .systemMaterial
    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct ScorerView_Previews: PreviewProvider {
    static var previews: some View {
        ScorerView()
    }
}
