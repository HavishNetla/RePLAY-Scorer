//
//  MissionScorerView.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/10/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import SwiftUI

struct MissionScorerView: View {
    @Binding var scorer: Scorer
    @State var showingSettings = false
    
    @State var showing0Helper = false
    @State var showing1Helper = false
    @State var showing2Helper = false
    @State var showing3Helper = false
    @State var showing4Helper = false
    @State var showing5Helper = false
    @State var showing6Helper = false
    @State var showing7Helper = false
    @State var showing8Helper = false
    @State var showing9Helper = false
    @State var showing10Helper = false
    @State var showing11Helper = false
    @State var showing12Helper = false
    @State var showing13Helper = false
    @State var showing14Helper = false
    @State var showing15Helper = false
    
    var body: some View {
        Group {
            Group {
                Section(header:
                            SectionHeaderView(showing: $showing0Helper, score: scorer.equipmentInspectionBonus.totalPoints, name: "M00 Inspection Bonus", missionNumber: 0)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.equipmentInspectionBonus.fits,
                        image: Image(systemName: "rectangle.fill"),
                        title: "Equipment fits",
                        description:
                            """
                        If your Innovation Project: \n
                        • Is made of at least two white LEGO pieces\n
                        • Measures at least as long as four LEGO studs in at
                        least one direction \n
                        • Has any part of it touching either the RePLAY logo or
                        the gray area around the bench: 20 max
                    """
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing1Helper, score: scorer.innovationProject.totalPoints, name: "M01 Innovation Project", missionNumber: 1)
                ) {
//                    ScorerToggleView(
//                        bindingProperty: $scorer.innovationProject.size,
//                        image: Image(systemName: "crop"),
//                        title: "Large enough",
//                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
//                    )
                    
                    ScorerPickerView(
                        bindingProperty: $scorer.innovationProject.touching,
                        image: Image(systemName: "rectangle.on.rectangle"),
                        title: "Partly touching",
                        description: "Part of the innovation Project is touching",
                        options: ["None", "RePlay Logo", "Bench Gray Area"]
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing2Helper, score: scorer.stepCounter.totalPoints, name: "M02 Step Counter", missionNumber: 2)
                ) {
                    ScorerPickerView(
                        bindingProperty: $scorer.stepCounter.pointerLocation,
                        image: Image(systemName: "arrowtriangle.up.fill"),
                        title: "The bottom of the pointer is on",
                        description: "The bottom of the pointer is on",
                        options: ["None", "Magenta", "Yellow", "Blue"]
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing3Helper, score: scorer.slide.totalPoints, name: "M03 Slide", missionNumber: 3)
                ) {
                    ScorerPickerView(
                        bindingProperty: $scorer.slide.slideFigures,
                        image: Image(systemName: "person.fill"),
                        title: "Number of figures off the slide",
                        description: "The bottom of the pointer is on",
                        options: ["0", "1", "2"]
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.slide.home,
                        image: Image(systemName: "house.fill"),
                        title: "A slide figure is home",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.slide.heldByTire,
                        image: Image(systemName: "smallcircle.fill.circle.fill"),
                        title: "A slide figure is held by the tire",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing4Helper, score: scorer.bench.totalPoints, name: "M04 Bench", missionNumber: 4))
                {
                    ScorerToggleView(
                        bindingProperty: $scorer.bench.flat,
                        image: Image(systemName: "line.horizontal.3"),
                        title: "Bench flat",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                    ScorerPickerView(
                        bindingProperty: $scorer.bench.spacesWCubes,
                        image: Image(systemName: "cube.fill"),
                        title: "Hopscotch spaces with cubes inside",
                        description: "The bottom of the pointer is on",
                        options: ["0", "1", "2", "3", "4"]
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.bench.backrest,
                        image: Image(systemName: "square.split.1x2.fill"),
                        title: "Backrest is out",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                }
                
                Section(header: SectionHeaderView(showing: $showing5Helper, score: scorer.basketball.totalPoints, name: "M05 Basketball", missionNumber: 5)) {
                    ScorerToggleView(
                        bindingProperty: $scorer.basketball.inCrate,
                        image: Image(systemName: "cube.fill"),
                        title: "Cube in the crate", color: Color.orange,
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                    ScorerPickerView(
                        bindingProperty: $scorer.basketball.whiteStopper,
                        image: Image(systemName: "arrowtriangle.right.fill"),
                        title: "Which stopper is the crate on",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long",
                        options: ["None", "Middle", "Top"]
                        
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing6Helper, score: scorer.pullUpBar.totalPoints, name: "M06 Pull-Up Bar", missionNumber: 6)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.pullUpBar.passed,
                        image: Image(systemName: "house.fill"),
                        title: "Robot passed through bar",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.pullUpBar.holds,
                        image: Image(systemName: "house.fill"),
                        title: "Robot held by bar",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing7Helper, score: scorer.robotDance.totalPoints, name: "M07 Robot Dance", missionNumber: 7)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.robotDance.dancing,
                        image: Image(systemName: "circle.grid.3x3.fill"),
                        title: "Robot is dancing on the dance floor at the end of the match",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing8Helper, score: scorer.boccia.totalPoints, name: "M08 Boccia", missionNumber: 8)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.boccia.colorMatchCube,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Both share models have sent only one cube anywhere onto the opposing field and those cubes color-match each other", color: Color.green,
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
                    ScorerStepperView(
                        bindingProperty: $scorer.boccia.numCubes,
                        image: Image(systemName: "square.grid.4x3.fill"),
                        title: "Cubes in frame or target",
                        description: "asd",
                        bounds: 0...18
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.boccia.yellowInTarget,
                        image: Image(systemName: "cube.fill"),
                        title: "At least one yellow cube is completely in the target", color: Color.yellow,
                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
                    )
                    
//                    ScorerToggleView(
//                        bindingProperty: $scorer.boccia.partlyInFrame,
//                        image: Image(systemName: "rectangle.fill.on.rectangle.fill"),
//                        title: "Any equipment is in the frame (even partly)",
//                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
//                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing9Helper, score: scorer.tireFlip.totalPoints, name: "M09 Tire Flip", missionNumber: 9)
                ) {
                    ScorerPickerView(
                        bindingProperty: $scorer.tireFlip.whiteSideUp,
                        image: Image(systemName: "circle.fill"),
                        title: "Tires white side up",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long",
                        options: ["None", "Blue", "Black", "Both"]
                        
                    )
                    ScorerPickerView(
                        bindingProperty: $scorer.tireFlip.inLargeCircle,
                        image: Image(systemName: "smallcircle.fill.circle"),
                        title: "Tires completely in the large target circle",
                        description: "2+ white LEGO pieces and 4+ LEGO studs long",
                        options: ["None", "Blue", "Black", "Both"]
                    )
                    
//                    ScorerToggleView(
//                        bindingProperty: $scorer.tireFlip.crossFlip,
//                        image: Image(systemName: "square.and.line.vertical.and.square.fill"),
//                        title: "The heavy (black tread) tire crossed the flip line (even partly) at any time",
//                        color: Color.black,
//                        description: "2+ white LEGO pieces and 4+ LEGO studs long"
//                    )
                }
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing10Helper, score: scorer.cellPhone.totalPoints, name: "M10 Cell Phone", missionNumber: 10)
            ) {
                ScorerToggleView(
                    bindingProperty: $scorer.cellPhone.whiteUp,
                    image: Image(systemName: "phone.down.fill"),
                    title: "The cell phone is resting white side up",
                    description: "asdasdasdasdasdasdasdasdasdasd"
                )
                
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing12Helper, score: scorer.treadmill.totalPoints, name: "M11 Treadmill", missionNumber: 11)
            ) {
                ScorerPickerImageView(
                    bindingProperty: $scorer.treadmill.rollerColor,
                    image: Image(systemName: "hand.point.right.fill"),
                    title: "The robot spun the rollers so the pointer points to",
                    description: "asdasdasdasdasdasdasdasdasdasd",
                    options: ["None", "Gray", "Red", "Orange", "Yellow", "Light Green", "Dark Green"]
                )
                
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing12Helper, score: scorer.rowMachine.totalPoints, name: "M12 Row Machine", missionNumber: 12)
            ) {
                ScorerToggleView(
                    bindingProperty: $scorer.rowMachine.outLarge,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Free wheel is outside the large circle",
                    description: "asdasdasdasdasdasdasdasdasdasd"
                )
                
                ScorerToggleView(
                    bindingProperty: $scorer.rowMachine.inSmall,
                    image: Image(systemName: "smallcircle.fill.circle.fill"),
                    title: "Free wheel is in the small circle",
                    description: "asdasdasdasdasdasdasdasdasdasd"
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing13Helper, score: scorer.weightMachine.totalPoints, name: "M13 Weight Machine", missionNumber: 13)
            ) {
                ScorerPickerView(
                    bindingProperty: $scorer.weightMachine.leverSetting,
                    image: Image(systemName: "arrowtriangle.right.fill"),
                    title: "The stopper is under the lever and the lever setting is",
                    description: "2+ white LEGO pieces and 4+ LEGO studs long",
                    options: ["None", "Blue", "Magenta", "Yellow"]
                    
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing14Helper, score: scorer.healthUnits.totalPoints, name: "M14 Health Units", missionNumber: 14)
            ) {
                ScorerStepperView(
                    bindingProperty: $scorer.healthUnits.numTouching,
                    image: Image(systemName: "arrowtriangle.right.fill"),
                    title: "Health units touching the RePLAY logo or the gray area",
                    description: "fasdasdasdasdasdasd",
                    bounds: 0...8
                )
                ScorerPickerView(
                    bindingProperty: $scorer.healthUnits.numLooped,
                    image: Image(systemName: "arrowtriangle.right.fill"),
                    title: "Health units looped over a pull-up bar",
                    description: "2+ white LEGO pieces and 4+ LEGO studs long",
                    options: ["0", "1", "2", "3", "4"]
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing15Helper, score: scorer.precision.totalPoints, name: "M15 Precision", missionNumber: 15)
            ) {
                ScorerStepperView(
                    bindingProperty: $scorer.precision.tokensLeft,
                    image: Image(systemName: "circle.fill"),
                    title: "Precision tokens left on the field", description: "2+a white LEGO pieces and 4+ LEGO studs long", color: Color.red,
                    bounds: 0...6
                )
            }
        }
    }
    
    struct MissionScorerView_Previews: PreviewProvider {
        @State static var scorer = Scorer()
        static var previews: some View {
            MissionScorerView(scorer: $scorer)
        }
    }
}
