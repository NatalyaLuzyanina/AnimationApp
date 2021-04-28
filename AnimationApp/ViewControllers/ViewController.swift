//
//  ViewController.swift
//  AnimationApp
//
//  Created by Nataly on 27.04.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationParametersLabel: UILabel!
    
    private let animations = Animation.getAnimations()
    private var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func runAnimation(_ sender: UIButton) {
        
        getAnimation(for: springAnimationView, animation: animations[index])
        
        if index == animations.count - 1 {
            index = -1
        }
        sender.setTitle(animations[index + 1].preset, for: .normal)
        index += 1
    }
    
    private func getAnimation(for element: SpringView, animation: Animation) {
        
        element.animation = animation.preset
        element.curve = animation.curve
        element.force = CGFloat(animation.force)
        element.duration = CGFloat(animation.duration)
        element.animate()
        
        show(parameters: animation)
    }
    
    private func show(parameters: Animation) {
        animationParametersLabel.text = """
            preset: \(parameters.preset)
            curve: \(parameters.curve)
            force: \(string(from: parameters.force))
            duration: \(string(from: parameters.duration))
            """
    }
    
    private func string(from parameter: Float) -> String {
        String(format: "%.2f", parameter)
    }
    
}

