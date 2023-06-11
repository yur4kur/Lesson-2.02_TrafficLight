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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        signalViewSetup(trafficLightViews)
    }
    
    @IBAction func startButtonDidTap() {
        startButton.setTitle("NEXT", for: .normal)
        
        trafficLightViews.last?.alpha = 0.3
        trafficLightViews.first?.alpha = 1
        
        let reoderedSignal = trafficLightViews.removeFirst()
        trafficLightViews.append(reoderedSignal)
    }
    
    private func signalViewSetup(_ views: [UIView]) {
        for view in views {
            view.layer.cornerRadius = view.frame.size.height / 2.0
            view.clipsToBounds = true
            view.alpha = 0.3
        }
    }
}


