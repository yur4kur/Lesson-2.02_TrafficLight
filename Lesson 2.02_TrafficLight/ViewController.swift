//
//  ViewController.swift
//  Lesson 2.02_TrafficLight
//
//  Created by Юрий Куринной on 09.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var trafficLightViews: [UIView]!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for view in trafficLightViews {
            signalViewSetup(view)
        }
    }

    @IBAction func startButtonDidTap() {
        startButton.setTitle("NEXT", for: .normal)
        
        trafficLightViews.last?.alpha = 0.3
        trafficLightViews.first?.alpha = 1
        
        let changingSignal = trafficLightViews.removeFirst()
        trafficLightViews.append(changingSignal)
    }
    
    private func signalViewSetup(_ view: UIView) {
        view.layer.cornerRadius = 70
        view.alpha = 0.3
    }
}


