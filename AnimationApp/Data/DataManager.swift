//
//  DataManager.swift
//  AnimationApp
//
//  Created by Nataly on 27.04.2021.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    let animationPresets = [
        "slideLeft" , "slideRight", "slideDown", "slideUp",
        "squeezeLeft", "squeezeRight", "squeezeDown", "squeezeUp",
        "fadeIn", "fadeOut", "fadeOutIn", "fadeInLeft",
        "fadeInRight", "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "fall", "shake", "pop",
        "flipY", "morph", "squeeze", "flash",
        "wobble", "swing"
    ]
    
    let animationCurve = [
        "easeIn", "easeOut", "easeInOut", "linear",
        "spring", "easeInSine", "easeOutSine", "easeInOutSine",
        "easeInQuad","easeOutQuad", "easeInOutQuad","easeInCubic",
        "easeOutCubic", "easeInOutCubic", "easeInQuart", "easeOutQuart",
        "easeInOutQuart", "easeInQuint", "easeOutQuint", "easeInOutQuint",
        "easeInExpo", "easeOutExpo", "easeInOutExpo", "easeInCirc",
        "easeOutCirc", "easeInOutCirc", "easeInBack", "easeOutBack",
        "easeInOutBack"
    ]
}
