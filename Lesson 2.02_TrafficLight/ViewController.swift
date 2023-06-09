//
//  ViewController.swift
//  Lesson 2.02_TrafficLight
//
//  Created by Юрий Куринной on 09.06.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSignalView: UIView!
    @IBOutlet var yellowSignalView: UIView!
    @IBOutlet var greenSignalView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signalViewSetup(redSignalView)
        signalViewSetup(yellowSignalView)
        signalViewSetup(greenSignalView)
    }

    @IBAction func startButtonDidTap() {
        startButton.setTitle("NEXT", for: .normal)
        redSignalView.alpha = 1
    }
    
    private func signalViewSetup(_ view: UIView) {
        view.layer.cornerRadius = 70
        view.alpha = 0.3
    }
}

