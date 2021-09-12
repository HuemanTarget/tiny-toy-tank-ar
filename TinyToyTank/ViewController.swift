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
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Load the "Box" scene from the "Experience" Reality File
    tankAnchor = try! TinyToyTank.load_TinyToyTank()
    
    // Add the box anchor to the scene
    arView.scene.anchors.append(tankAnchor!)
  }
}
