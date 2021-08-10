//
//  ScorerView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI
import SPAlert

struct ScorerView: View {
    @Environment(\.colorScheme) var colorScheme

    @State var scorer = Scorer()
    @State var showingSettings = false
    @State var showingPreview = false
    
    var test : some View {
        Text("Hello, SwiftUI")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
    }
    
    var test1: some View {
        SummaryView(scorer: scorer)
    }
    
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
                    HStack {
                        Image(systemName: "t.circle.fill")
                            .iconModifier()
                        
                        Text("Total Points").bold()
                        Text("\(scorer.totalPoints)")
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .trailing)
                            //.padding(.trailing)
                        
                        Button(action: {
                            let image = test1.snapshot()
                            
//                            let activityVC = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
//
//                            UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
                            
                            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)

                            SPAlert.present(title: "Saved to Photos", preset: .done)
                            
                            //showingPreview = true
                        }) {
                            Image(systemName: "square.and.arrow.down").iconModifier().foregroundColor(.primary)
                        }
                        
                    }
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
                        Button(action: {
                            let image = test1.snapshot()

                            UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
                        }) {
                            Text("Save as image")
                            Image(systemName: "square.and.arrow.down")
                        }
                    }))
                }
                .padding()
            }
        }.sheet(isPresented: $showingPreview, content: {
            SaveSummaryPreviewView(scorer: scorer, themeSelection: colorScheme == .dark ?
                                    "Dark" :
                                    "Light")
        })
        
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

extension View {
    func snapshot() -> UIImage {
        let controller = UIHostingController(rootView: self)
        let view = controller.view

        let targetSize = controller.view.intrinsicContentSize
        view?.bounds = CGRect(origin: .zero, size: targetSize)
        view?.backgroundColor = .clear

        let renderer = UIGraphicsImageRenderer(size: targetSize)

        return renderer.image { _ in
            view?.drawHierarchy(in: controller.view.bounds, afterScreenUpdates: true)
        }
    }
}
