//
//  Scorer.swift
//  Replay Scorer
//
//  Created by Havish Netla on 8/6/20.
//  Copyright © 2020 Havish Netla. All rights reserved.
//

import Foundation

struct Scorer: TotalPoints {
    var assist: Bool = false
    
    var equipmentInspectionBonus = EquipmentInspectionBonus()
    var innovationProject = InnovationProject()
    var unusedCapacity = UnusedCapacity()
    var unloadCargoPlane = UnloadCargoPlane() {
        didSet {
//            if (slide.slideFigures == 0) {
//                slide.home = false
//                slide.heldByTire = false
//            } else if (slide.slideFigures == 1) {
//                if (slide.home && slide.heldByTire) { // if their both true
//                    if (slide.heldByTire == oldValue.heldByTire) { // if home changed
//                        slide.heldByTire = false
//                    } else {
//                        slide.home = false
//                    }
//                }
//            }
        }
    }
    var transportationJourney = TransportationJourney() {
        didSet {
//            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
//                if(oldValue.spacesWCubes != bench.spacesWCubes) { // if old != current (so if the bench changed)
//                    let newNumCubesValue = 18 - (bench.spacesWCubes + (basketball.inCrate ? 1 : 0))
//                    boccia.numCubes = newNumCubesValue
//                }
//            }
//
//            if(!bench.flat) {
//                bench.spacesWCubes = 0
//            }
        }
    }
    var switchEngine = SwitchEngine() {
        didSet {
//            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
//                if(oldValue.inCrate != basketball.inCrate) { // if old != current (so if the basketball changed)
//                    let newNumCubesValue = 18 - (bench.spacesWCubes + (basketball.inCrate ? 1 : 0))
//                    boccia.numCubes = newNumCubesValue
//                }
//            }
//            
//            if(!bench.flat) {
//                bench.spacesWCubes = 0
//            }
        }
    }
    var accidentAvoidance = AccidentAvoidance() {
        didSet {
//            if(robotDance.dancing) {
//                pullUpBar.holds = false
//            }
        }
    }
    var unloadCargoShip = UnloadCargoShip() {
        didSet {
//            if(pullUpBar.holds) {
//                robotDance.dancing = false
//            }
        }
    }
    var airDrop = AirDrop() {
        didSet {
//            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
//                if(oldValue.numCubes != boccia.numCubes) { // if old != current (so if the boccia changed)
//
//                    if(bench.spacesWCubes == 0) {
//                        basketball.inCrate = false
//                    }
//                    let newSpaceWCubeValue = 18 - (boccia.numCubes + (basketball.inCrate ? 1 : 0))
//                    bench.spacesWCubes = newSpaceWCubeValue
//                }
//            }
//
//            if(boccia.partlyInFrame) {
//                boccia.colorMatchCube = false
//                boccia.numCubes = 0
//                boccia.yellowInTarget = false
//            }
        }
    }
    var trainTracks = TrainTracks()
    var sortingCenter = SortingCenter()
    var homeDelivery = HomeDelivery() {
        didSet {
//            if(tireFlip.crossFlip) {
//                tireFlip.whiteSideUp = 0
//                tireFlip.inLargeCircle = 0
//            }
        }
    }
    var largeDelivery = LargeDelivery()
    var platooningTrucks = PlatooningTrucks()
    var bridge = Bridge() {
        didSet {
//            if(healthUnits.numLooped + healthUnits.numTouching > 8) {
//                if(oldValue.numLooped == healthUnits.numLooped) { // if numTouched Changed
//                    healthUnits.numLooped = 8 - healthUnits.numTouching
//                } else {
//                    healthUnits.numTouching = 8 - healthUnits.numLooped
//
//                }
//            }
        }
    }
    var loadCargo = LoadCargo()
    var cargoConnect = CargoConnect()

    var precision = Precision()
    
    var totalPoints: Int {
        var total = 0
        
        total += equipmentInspectionBonus.totalPoints
        total += innovationProject.totalPoints
        total += unusedCapacity.totalPoints
        total += unloadCargoPlane.totalPoints
        total += transportationJourney.totalPoints
        total += switchEngine.totalPoints
        total += accidentAvoidance.totalPoints
        total += unloadCargoShip.totalPoints
        total += airDrop.totalPoints
        total += trainTracks.totalPoints
        total += sortingCenter.totalPoints
        total += homeDelivery.totalPoints
        total += largeDelivery.totalPoints
        total += platooningTrucks.totalPoints
        total += bridge.totalPoints
        total += loadCargo.totalPoints
        total += cargoConnect.totalPoints
        total += precision.totalPoints
        
        return total
        
    }
    
    // 0
    struct EquipmentInspectionBonus : TotalPoints {
        var fits: Bool = false
        var totalPoints: Int {
            return (fits ? 20: 0)
        }
    }
    
    // 1
    struct InnovationProject : TotalPoints {
        var madeOfAtLeast2: Bool = false
        var size: Bool = false
        var touching: Bool = false
        
        var totalPoints: Int {
            if (madeOfAtLeast2 == size) == (size == touching) {
                return (madeOfAtLeast2 ? 20 : 0)
            }
            
            return 0
        }
    }
    
    // 2
    struct UnusedCapacity : TotalPoints {
        var closed: Bool = false
        var fillAmmount: Int = 0
        
        var totalPoints: Int {
            var total = 0
            
            if closed {
                if fillAmmount != 0 && fillAmmount < 6 {
                    total += 20
                }
                
                if fillAmmount != 0 && fillAmmount == 6 {
                    total += 30
                }
            }
            
            return total
        }
    }
    
    // 3
    struct UnloadCargoPlane : TotalPoints {
        var doorTouching: Bool = false
        var containerSeperate: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += doorTouching ? 20 : 0
            total += containerSeperate ? 10 : 0
            
            return total
        }
    }
    
    // 4
    struct TransportationJourney : TotalPoints {
        var truckPastBlue: Bool = false
        var airplanePastBlue: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += truckPastBlue ? 10: 0
            total += airplanePastBlue ? 10: 0

            total += (truckPastBlue == airplanePastBlue) == (airplanePastBlue == true) ? 10: 0
            
            return total
        }
    }
    
    // 5
    struct SwitchEngine : TotalPoints {
        var yellowDown: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += yellowDown ? 15 : 0
            
            return total
        }
    }
    
    // 6
    struct AccidentAvoidance : TotalPoints {
        var parked: Bool = false
        var panelState: Int = 0
        
        var totalPoints: Int {
            var total = 0
            
            if parked {
                total += panelState == 0 ? 20 : 0
                total += panelState == 1 ? 30 : 0
            }
            
            return total
        }
    }
    
    // 7
    struct UnloadCargoShip : TotalPoints {
        var touching: Bool = true
        var east: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += touching ? 0 : 20
            total += east ? 10 : 0
            
            return total
        }
    }
    
    // 8
    struct AirDrop : TotalPoints { //TODO: figure out wtf this bullshit is
        var yourFoodSeperated: Bool = false
        var otherFoodInCircle: Bool = false
        var bothSeperated: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += yourFoodSeperated ? 20 : 0
            total += otherFoodInCircle ? 10 : 0
            total += bothSeperated ? 10 : 0
            
            return total
        }
    }
    
    struct TrainTracks : TotalPoints {
        var restsDown: Bool = false
        var reached: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += restsDown ? 20 : 0
            total += reached ? 20 : 0
            
            return total
        }
    }
    
    struct SortingCenter : TotalPoints {
        var sorted: Bool = false
        
        var totalPoints: Int {
            return sorted ? 20 : 0
        }
    }
    
    struct HomeDelivery : TotalPoints {
        var packageState: Int = 0
        
        var totalPoints: Int {
            var total = 0
            
            total += packageState == 0 ? 0 : 0
            total += packageState == 1 ? 20 : 0
            total += packageState == 2 ? 30 : 0
            
            return total
        }
        
    }
    
    struct LargeDelivery : TotalPoints {
        var turbineTouchingHolder: Bool = false
        var turbineOtherTouchingState: Int = 0
        
        var chickenUp: Bool = true
        var chickenPositionState: Int = 2
        
        var totalPoints: Int {
            var total = 0
            
            if turbineTouchingHolder {
                total += turbineOtherTouchingState == 0 ? 20 : 0
                total += turbineOtherTouchingState == 1 ? 30 : 0
            }
            
            if chickenUp {
                total += chickenPositionState == 1 ? 5 : 0
                total += chickenPositionState == 2 ? 10 : 0
            }
            
            return total
        }
    }
    
    struct PlatooningTrucks : TotalPoints {
        var latchedOutsideHome: Bool = false
        var latchedToBridge: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += latchedOutsideHome ? 10 : 0
            total += latchedOutsideHome ? 10 : 0
            total += (latchedOutsideHome == latchedToBridge) == (latchedToBridge == true) ? 10 : 0
            
            return total
        }
        
    }
    
    struct Bridge : TotalPoints {
        var loweredCount: Int = 0
        
        var totalPoints: Int {
            return loweredCount * 10
        }
    }
    
    struct LoadCargo : TotalPoints {
        var containersOnPlatooningTruck: Int = 0
        var containersOnTrain: Int = 0
        var containersOnCargoShip: Int = 0
                
        var totalPoints: Int {
            var total = 0
            
            total += min(containersOnPlatooningTruck * 10, 20)
            total += min(containersOnTrain * 20, 40)
            total += min(containersOnCargoShip * 30, 60)
            
            return total
        }
    }
    
    struct CargoConnect : TotalPoints {
        var numPartlyInCircle: Int = 0
        var numCompletelyInCircle: Int = 0
        
        var notHingedBlueInBlue: Bool = false
        var limeInLime: Bool = false
        
        var numCirclesWithComplete: Int = 0
        
        var totalPoints: Int {
            var total = 0
            
            total += numPartlyInCircle * 5
            total += numCompletelyInCircle * 10
            
            total += notHingedBlueInBlue ? 20 : 0
            total += limeInLime ? 20 : 0
            
            total += numCirclesWithComplete * 10
            
            return total
        }
    }
    
    struct Precision : TotalPoints {
        var tokensLeft: Int = 6
        
        var totalPoints: Int {
            var total = 0
            switch tokensLeft {
            case 6:
                total = 50
            case 5:
                total = 50
            case 4:
                total = 35
            case 3:
                total = 25
            case 2:
                total = 15
            case 1:
                total = 10
            case 0:
                total = 0
            default:
                total = 60
            }
            
            return total
        }
    }
    
    mutating func reset() {
        let assist = self.assist
        self = Scorer()
        self.assist = assist
    }
}

protocol TotalPoints {
    var totalPoints: Int { get }
}
