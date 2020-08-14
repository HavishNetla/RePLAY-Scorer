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
    var stepCounter = StepCounter()
    var slide = Slide() {
        didSet {
            if (slide.slideFigures == 0) {
                slide.home = false
                slide.heldByTire = false
            } else if (slide.slideFigures == 1) {
                if (slide.home && slide.heldByTire) { // if their both true
                    if (slide.heldByTire == oldValue.heldByTire) { // if home changed
                        slide.heldByTire = false
                    } else {
                        slide.home = false
                    }
                }
            }
        }
    }
    var bench = Bench() {
        didSet {
            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
                if(oldValue.spacesWCubes != bench.spacesWCubes) { // if old != current (so if the bench changed)
                    let newNumCubesValue = 18 - (bench.spacesWCubes + (basketball.inCrate ? 1 : 0))
                    boccia.numCubes = newNumCubesValue
                }
            }
            
            if(!bench.flat) {
                bench.spacesWCubes = 0
            }
        }
    }
    var basketball = Basketball() {
        didSet {
            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
                if(oldValue.inCrate != basketball.inCrate) { // if old != current (so if the basketball changed)
                    let newNumCubesValue = 18 - (bench.spacesWCubes + (basketball.inCrate ? 1 : 0))
                    boccia.numCubes = newNumCubesValue
                }
            }
            
            if(!bench.flat) {
                bench.spacesWCubes = 0
            }
        }
    }
    var robotDance = RobotDance() {
        didSet {
            if(robotDance.dancing) {
                pullUpBar.holds = false
            }
        }
    }
    var pullUpBar = PullUpBar() {
        didSet {
            if(pullUpBar.holds) {
                robotDance.dancing = false
            }
        }
    }
    var boccia = Boccia() {
        didSet {
            if (bench.spacesWCubes + boccia.numCubes + (basketball.inCrate ? 1 : 0) > 18) {
                if(oldValue.numCubes != boccia.numCubes) { // if old != current (so if the boccia changed)
                    
                    if(bench.spacesWCubes == 0) {
                        basketball.inCrate = false
                    }
                    let newSpaceWCubeValue = 18 - (boccia.numCubes + (basketball.inCrate ? 1 : 0))
                    bench.spacesWCubes = newSpaceWCubeValue
                }
            }
            
            if(boccia.partlyInFrame) {
                boccia.colorMatchCube = false
                boccia.numCubes = 0
                boccia.yellowInTarget = false
            }
        }
    }
    var cellPhone = CellPhone()
    var treadmill = Treadmill()
    var tireFlip = TireFlip() {
        didSet {
            if(tireFlip.crossFlip) {
                tireFlip.whiteSideUp = 0
                tireFlip.inLargeCircle = 0
            }
        }
    }
    var rowMachine = RowMachine()
    var weightMachine = WeightMachine()
    var healthUnits = HealthUnits() {
        didSet {
            if(healthUnits.numLooped + healthUnits.numTouching > 8) {
                if(oldValue.numLooped == healthUnits.numLooped) { // if numTouched Changed
                    healthUnits.numLooped = 8 - healthUnits.numTouching
                } else {
                    healthUnits.numTouching = 8 - healthUnits.numLooped

                }
            }
        }
    }
    var precision = Precision()
    
    var totalPoints: Int {
        var total = 0
        
        total += equipmentInspectionBonus.totalPoints
        total += innovationProject.totalPoints
        total += stepCounter.totalPoints
        total += slide.totalPoints
        total += bench.totalPoints
        total += basketball.totalPoints
        total += pullUpBar.totalPoints
        total += robotDance.totalPoints
        total += boccia.totalPoints
        total += tireFlip.totalPoints
        total += cellPhone.totalPoints
        total += treadmill.totalPoints
        total += rowMachine.totalPoints
        total += weightMachine.totalPoints
        total += healthUnits.totalPoints
        total += precision.totalPoints
        
        return total
        
    }
    
    // 0
    struct EquipmentInspectionBonus : TotalPoints {
        var fits: Bool = false
        var totalPoints: Int {
            return (fits ? 25: 0)
        }
    }
    
    // 1
    struct InnovationProject : TotalPoints {
        var size: Bool = false
        var touching: Int = 0
        
        var totalPoints: Int {
            return (touching != 0 ? 20 : 0)
        }
    }
    
    // 2
    struct StepCounter : TotalPoints {
        var pointerLocation: Int = 0
        var totalPoints: Int {
            return pointerLocation == 0 ? 0 : (5 * pointerLocation + 5)
        }
    }
    
    // 3
    struct Slide : TotalPoints {
        var slideFigures: Int = 0
        var home: Bool = false
        var heldByTire: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += slideFigures == 1 ? 5 : 0
            total += slideFigures == 2 ? 20 : 0
            
            total += home ? 10 : 0
            
            total += heldByTire ? 20 : 0
            
            return total
        }
    }
    
    // 4
    struct Bench : TotalPoints {
        var flat: Bool = false
        var spacesWCubes: Int = 0
        var backrest: Bool = false;
        
        var totalPoints: Int {
            var total = 0
            
            total += flat ? 10: 0
            total += spacesWCubes * 10
            total += backrest ? 15: 0
            
            return total
        }
    }
    
    // 5
    struct Basketball : TotalPoints {
        var inCrate: Bool = false
        var whiteStopper: Int = 0
        
        var totalPoints: Int {
            var total = 0
            
            total += inCrate ? 15 : 0
            total += whiteStopper == 1 ? 15 : 0
            total += whiteStopper == 2 ? 25 : 0
            
            return total
        }
    }
    
    // 6
    struct PullUpBar : TotalPoints {
        var passed: Bool = false
        var holds: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += passed ? 15 : 0
            total += holds ? 30 : 0
            
            return total
        }
    }
    
    // 7
    struct RobotDance : TotalPoints {
        var dancing: Bool = false
        
        var totalPoints: Int {
            return (dancing ? 20 : 0)
        }
    }
    
    // 8
    struct Boccia : TotalPoints {
        var colorMatchCube: Bool = false
        var numCubes: Int = 0
        var yellowInTarget: Bool = false
        var partlyInFrame: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += colorMatchCube ? 25 : 0
            total += numCubes * 5
            total += yellowInTarget ? 10 : 0
            
            total = partlyInFrame ? 0 : total
            
            return total
        }
    }
    
    struct TireFlip : TotalPoints {
        var whiteSideUp: Int = 0
        var inLargeCircle: Int = 0
        
        var crossFlip: Bool = false
        var totalPoints: Int {
            var total = 0
            
            
            switch whiteSideUp {
            case 1:
                total += 10
            case 2:
                total += 15
            case 3:
                total += 25
            default:
                total += 0
            }
            
            switch inLargeCircle {
            case 1:
                total += 5
            case 2:
                total += 5
            case 3:
                total += 10
            default:
                total += 0
            }
            
            return total
        }
    }
    
    struct CellPhone : TotalPoints {
        var whiteUp: Bool = false
        
        var totalPoints: Int {
            return whiteUp ? 15 : 0
        }
    }
    
    struct Treadmill : TotalPoints {
        var rollerColor: Int = 0
        
        var totalPoints: Int {
            return rollerColor * 5
        }
    }
    
    struct RowMachine : TotalPoints {
        var outLarge: Bool = false
        var inSmall: Bool = false
        
        var totalPoints: Int {
            var total = 0
            
            total += outLarge ? 15 : 0
            total += inSmall ? 15 : 0
            
            return total
        }
    }
    
    struct WeightMachine : TotalPoints {
        var leverSetting: Int = 0
        
        var totalPoints: Int {
            return leverSetting == 0 ? 0 : leverSetting * 5 + 5
        }
        
    }
    
    struct HealthUnits : TotalPoints {
        var numTouching: Int = 0
        var numLooped: Int = 0
        
        var totalPoints: Int {
            return (numTouching * 5) + (numLooped * 10)
        }
    }
    
    struct Precision : TotalPoints {
        var tokensLeft: Int = 6
        
        var totalPoints: Int {
            var total = 0
            switch tokensLeft {
            case 6:
                total = 60
            case 5:
                total = 45
            case 4:
                total = 30
            case 3:
                total = 20
            case 2:
                total = 10
            case 1:
                total = 5
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
