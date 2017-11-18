//
//  ViewController.swift
//  HW16
//
//  Created by Alex Neo on 11/17/17.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var ibView: UIView!
    
    private var isMovableViewTouch = false

    override func viewDidLoad() {
        super.viewDidLoad()
        ibView.backgroundColor = .orange
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panRecognized(_:)))
        ibView.addGestureRecognizer(panGesture)
        
        let pinchGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchGesture(_:)))
        ibView.addGestureRecognizer(pinchGesture)
        
        let rotationGestiure = UIRotationGestureRecognizer(target: self, action: #selector(rotationRecognazed(_:)))
        ibView.addGestureRecognizer(rotationGestiure)
    }
    
    @objc func panRecognized(_ sender: UIPanGestureRecognizer) {
        let position = sender.location(in: self.view)
        switch sender.state {
        case .began, .changed, .ended:
            ibView.center = position
            ibView.backgroundColor = UIColor.orange
        default:
            break
        }
    }
    
    @objc func pinchGesture(_ sender: UIPinchGestureRecognizer) {
        guard let transformedView = sender.view else { return }
        transformedView.transform = transformedView.transform.scaledBy(x: sender.scale, y: sender.scale)
        sender.scale = 1
        ibView.backgroundColor = UIColor.orange
    }
    
    @objc func rotationRecognazed(_ sender: UIRotationGestureRecognizer) {
 
        guard let transformRotation = sender.view else { return }
        transformRotation.transform = transformRotation.transform.rotated(by: sender.rotation)
        sender.rotation = 0
        ibView.backgroundColor = UIColor.orange
    }
    
    @IBAction func ibTapGesture(_ sender: Any) {
        ibView.backgroundColor = UIColor.random
    }
    
}
