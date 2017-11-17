//
//  ViewController.swift
//  HW16
//
//  Created by Alex Neo on 11/17/17.
//  Copyright © 2017 Alex Neo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var ibImageView: UIImageView!
    private var isMovableViewTouch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ibImageView.backgroundColor = .orange
    }
    
    @IBAction func panRecognized(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: ibImageView)
        ibImageView.center = point
        print(point.x)
    }

//    @IBAction func ibTapGesture(_ sender: Any) {
//        ibImageView.backgroundColor = UIColor.random
//    }
    
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesBegan(touches, with: event)
//        guard let touch = touches.first else { return }
//        let movableViewPoint = touch.location(in: ibImageView)
//        ibImageView.backgroundColor = .magenta
//        if ibImageView.point(inside: movableViewPoint, with: event) {
//            isMovableViewTouch = true
//        }
//    }
//    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesMoved(touches, with: event)
//        guard isMovableViewTouch else { return }
//        guard let touch = touches.first else { return }
//        let touchPoint = touch.location(in: view)
//        ibImageView.center = touchPoint
//    }
//    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesEnded(touches, with: event)
//        isMovableViewTouch = false
//    }
//    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
//        super.touchesCancelled(touches, with: event)
//        ibImageView.backgroundColor = UIColor.orange
//        isMovableViewTouch = false
//    }
}
