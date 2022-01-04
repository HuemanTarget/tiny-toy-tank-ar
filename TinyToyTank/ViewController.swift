//
//  ViewController.swift
//  TinyToyTank
//
//  Created by Joshua Basche on 9/12/21.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
  
  // MARK: - IBOutlets
  @IBOutlet var arView: ARView!
  
  // MARK: - Variables
  var tankAnchor: TinyToyTank._TinyToyTank?
  var isActionPlaying: Bool = false
  var isTwoEditing: Bool = true
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Load the "Box" scene from the "Experience" Reality File
    tankAnchor = try! TinyToyTank.load_TinyToyTank()
    
    // Parent Turret to Tank Body
    tankAnchor!.cannon?.setParent(tankAnchor!.tank, preservingWorldTransform: true)
    
    tankAnchor?.actions.actionComplete.onAction = { _ in
      self.isActionPlaying = false
    }
    
    // Add the box anchor to the scene
    arView.scene.anchors.append(tankAnchor!)
  }
  
  
  // MARK: - IBActions
  @IBAction func tankRightPressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.tankRight.post()
    
  }
  
  @IBAction func tankForwardPressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.tankForward.post()
    
  }
  
  @IBAction func tankLeftPressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.tankLeft.post()
    
  }
  
  @IBAction func turretRightPressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.turretRight.post()
    
  }
  
  @IBAction func cannonFirePressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.cannonFire.post()
    
  }
  
  @IBAction func turretLeftPressed(_ sender: Any) {
    if self.isActionPlaying {
      return
    } else {
      self.isActionPlaying = true
    }
    
    tankAnchor!.notifications.turretLeft.post()
    
  }
  
}
