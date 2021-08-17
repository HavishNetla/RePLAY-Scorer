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
    @State var showing16Helper = false
    @State var showing17Helper = false

    var body: some View {
        Group {
            Group {
                Section(header:
                            SectionHeaderView(showing: $showing0Helper, score: scorer.equipmentInspectionBonus.totalPoints, name: "M00 Inspection Bonus", missionNumber: 0)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.equipmentInspectionBonus.fits,
                        image: Image(systemName: "rectangle.fill"),
                        title: "Equipment fits"
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing1Helper, score: scorer.innovationProject.totalPoints, name: "M01 Innovation Project", missionNumber: 1)
                ) {
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.innovationProject.touching,
                        image: Image(systemName: "rectangle.on.rectangle"),
                        title: "Partly Touching the CARGO CONNECT Circle"
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing2Helper, score: scorer.unusedCapacity.totalPoints, name: "M02 Unused Capacity", missionNumber: 2)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.unusedCapacity.closed,
                        image: Image(systemName: "rectangle.on.rectangle"),
                        title: "Hinged container closed"
                    )
                    
                    ScorerStepperView(
                        bindingProperty: $scorer.unusedCapacity.fillAmmount,
                        image: Image(systemName: "square.grid.4x3.fill"),
                        title: "Pieces in the container",
                        bounds: 0...6
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing3Helper, score: scorer.unloadCargoPlane.totalPoints, name: "M03 Unload Cargo Plane", missionNumber: 3)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.unloadCargoPlane.doorTouching,
                        image: Image(systemName: "house.fill"),
                        title: "Cargo door is completely down"
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.unloadCargoPlane.containerSeperate,
                        image: Image(systemName: "smallcircle.fill.circle.fill"),
                        title: "Container is completely seperate"
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing4Helper, score: scorer.transportationJourney.totalPoints, name: "M04 Transportation Journey", missionNumber: 4))
                {
                    ScorerToggleView(
                        bindingProperty: $scorer.transportationJourney.truckPastBlue,
                        image: Image(systemName: "line.horizontal.3"),
                        title: "Truck past blue end line"
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.transportationJourney.airplanePastBlue,
                        image: Image(systemName: "line.horizontal.3"),
                        title: "Airplane past blue end line"
                    )
                }
                
                Section(header: SectionHeaderView(showing: $showing5Helper, score: scorer.switchEngine.totalPoints, name: "M05 Switch Engine", missionNumber: 5)) {
                    ScorerToggleView(
                        bindingProperty: $scorer.switchEngine.yellowDown,
                        image: Image(systemName: "cube.fill"),
                        title: "Yellow bar down",
                        color: Color.yellow
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing6Helper, score: scorer.accidentAvoidance.totalPoints, name: "M06 Accident Avoidance", missionNumber: 6)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.accidentAvoidance.parked,
                        image: Image(systemName: "house.fill"),
                        title: "Robot parked over blue accident-avoidance line"
                    )
                    
                    ScorerPickerView(
                        bindingProperty: $scorer.accidentAvoidance.panelState,
                        image: Image(systemName: "house.fill"),
                        title: "Yellow panel is",
                        color: Color.yellow,
                        options: ["Not knocked down", "Knocked down"])
                    
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing7Helper, score: scorer.unloadCargoShip.totalPoints, name: "M07 Unload Cargo Ship", missionNumber: 7)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.unloadCargoShip.touching,
                        image: Image(systemName: "circle.grid.3x3.fill"),
                        title: "Container not touching cargo ship's east deck"
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.unloadCargoShip.east,
                        image: Image(systemName: "circle.grid.3x3.fill"),
                        title: "Container completely east of cargo ship's east deck"
                    )
                    
                    
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing8Helper, score: scorer.airDrop.totalPoints, name: "M08 Air Drop", missionNumber: 8)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.airDrop.yourFoodSeperated,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Food package is seperated from helicopter",
                        color: Color.yellow
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.airDrop.otherFoodInCircle,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Other field's food package is completley in your CARGO CONNECT circle",
                        color: Color.yellow
                    )
                    
                    ScorerToggleView(
                        bindingProperty: $scorer.airDrop.bothSeperated,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Both teams have seperated their food packages",
                        color: Color.yellow
                    )
                }
                
                Section(header:
                            SectionHeaderView(showing: $showing9Helper, score: scorer.trainTracks.totalPoints, name: "M09 Train Tracks", missionNumber: 9)
                ) {
                    ScorerToggleView(
                        bindingProperty: $scorer.trainTracks.restsDown,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Train track rests completely down/west"
                    )
                    ScorerToggleView(
                        bindingProperty: $scorer.trainTracks.reached,
                        image: Image(systemName: "square.fill.and.line.vertical.square.fill"),
                        title: "Train has latched at the end of the tracks"
                    )
                }
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing10Helper, score: scorer.sortingCenter.totalPoints, name: "M10 Sorting Center", missionNumber: 10)
            ) {
                ScorerToggleView(
                    bindingProperty: $scorer.sortingCenter.sorted,
                    image: Image(systemName: "phone.down.fill"),
                    title: "Light orange container is the only container completely in the blue sorting area box"
                )
                
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing12Helper, score: scorer.homeDelivery.totalPoints, name: "M11 Home Delivery", missionNumber: 11)
            ) {
                ScorerPickerView(
                    bindingProperty: $scorer.homeDelivery.packageState,
                    image: Image(systemName: "hand.point.right.fill"),
                    title: "The package has been delivered on to the doorstep",
                    options: ["None", "Partly", "Completely"]
                )
                
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing12Helper, score: scorer.largeDelivery.totalPoints, name: "M12 Large Delivery", missionNumber: 12)
            ) {
                ScorerToggleView(
                    bindingProperty: $scorer.largeDelivery.turbineTouchingHolder,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Turbine blade is touching the blue holder"
                )
                ScorerPickerView(
                    bindingProperty: $scorer.homeDelivery.packageState,
                    image: Image(systemName: "hand.point.right.fill"),
                    title: "Turbine blade is touching only the blue holder and",
                    options: ["The Mat", "Nothing else", "Something else"]
                )
                
                
                ScorerToggleView(
                    bindingProperty: $scorer.largeDelivery.chickenUp,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Chicken statue is upright"
                )
                ScorerPickerView(
                    bindingProperty: $scorer.largeDelivery.chickenPositionState,
                    image: Image(systemName: "hand.point.right.fill"),
                    title: "Base of the chicken statue is in the circle",
                    options: ["None", "Partly", "Completely"]
                )
                
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing13Helper, score: scorer.platooningTrucks.totalPoints, name: "M13 Platooning Trucks", missionNumber: 13)
            ) {
                ScorerToggleView(
                    bindingProperty: $scorer.platooningTrucks.latchedOutsideHome,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Both trucks are latched together outside of home"
                )
                
                ScorerToggleView(
                    bindingProperty: $scorer.platooningTrucks.latchedToBridge,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "A truck is latched to the bridge"
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing14Helper, score: scorer.bridge.totalPoints, name: "M14 Bridge", missionNumber: 14)
            ) {
                ScorerPickerView(
                    bindingProperty: $scorer.bridge.loweredCount,
                    image: Image(systemName: "hand.point.right.fill"),
                    title: "Number of bridge decks that have been lowered",
                    options: ["0", "1", "2", "3"]
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing15Helper, score: scorer.loadCargo.totalPoints, name: "M15 Load Cargo", missionNumber: 15)
            ) {
                ScorerStepperView(
                    bindingProperty: $scorer.loadCargo.containersOnPlatooningTruck,
                    image: Image(systemName: "circle.fill"),
                    title: "Containers only touching the Platooning Trucks",
                    color: Color.red,
                    bounds: 0...100
                )
                
                ScorerStepperView(
                    bindingProperty: $scorer.loadCargo.containersOnTrain,
                    image: Image(systemName: "circle.fill"),
                    title: "Containers only touching the Train",
                    color: Color.red,
                    bounds: 0...100
                )
                
                ScorerStepperView(
                    bindingProperty: $scorer.loadCargo.containersOnCargoShip,
                    image: Image(systemName: "circle.fill"),
                    title: "Containers only touching the Cargo Ship's West Deck",
                    color: Color.red,
                    bounds: 0...100
                )
            }
            
            Section(header:
                        SectionHeaderView(showing: $showing15Helper, score: scorer.cargoConnect.totalPoints, name: "M15 Cargo Connect", missionNumber: 15)
            ) {
                ScorerStepperView(
                    bindingProperty: $scorer.cargoConnect.numPartlyInCircle,
                    image: Image(systemName: "circle.fill"),
                    title: "Containers partly in any circle",
                    color: Color.red,
                    bounds: 0...100
                )
                
                ScorerStepperView(
                    bindingProperty: $scorer.cargoConnect.numCompletelyInCircle,
                    image: Image(systemName: "circle.fill"),
                    title: "Containers completely in any circle",
                    color: Color.red,
                    bounds: 0...100
                )
                
                ScorerToggleView(
                    bindingProperty: $scorer.cargoConnect.notHingedBlueInBlue,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Blue (not hinged) container is in the blue circle",
                    color: Color.blue
                )
                
                ScorerToggleView(
                    bindingProperty: $scorer.cargoConnect.limeInLime,
                    image: Image(systemName: "smallcircle.fill.circle"),
                    title: "Lime green container completely in the lime green circle",
                    color: Color.green
                )
                
                ScorerStepperView(
                    bindingProperty: $scorer.cargoConnect.numCirclesWithComplete,
                    image: Image(systemName: "circle.fill"),
                    title: "Circles with at least 1 container completely in them",
                    color: Color.red,
                    bounds: 0...100
                )
            }
            Section(header:
                        SectionHeaderView(showing: $showing15Helper, score: scorer.precision.totalPoints, name: "M17 Precision", missionNumber: 15)
            ) {
                ScorerStepperView(
                    bindingProperty: $scorer.precision.tokensLeft,
                    image: Image(systemName: "circle.fill"),
                    title: "Precision tokens left on the field",
                    color: Color.red,
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
