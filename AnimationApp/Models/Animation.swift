//
//  Animation.swift
//  AnimationApp
//
//  Created by Nataly on 27.04.2021.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let duration: Float
    
    static func getAnimations() -> [Animation] {
        var animations: [Animation] = []
        
        for _ in 1...10 {
            let animation = Animation(preset: DataManager.shared.animationPresets.randomElement() ?? "slideLeft",
                                      curve: DataManager.shared.animationCurve.randomElement() ?? "easeIn",
                                      force: Float.random(in: 0...2),
                                      duration: Float.random(in: 1...3))
            
            animations.append(animation)
        }
        return animations
    }
}


