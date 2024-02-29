//
//  ViewController.swift
//  DelegatePronzip
//
//  Created by RGMCode on 24.02.24.
//

import UIKit

class ViewController: UIViewController, keyDelegate {
    
    @IBOutlet weak var imgHouse: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnChooseColorTapped(_ sender: UIButton) {
        let selectionVC = storyboard?.instantiateViewController(identifier: "SelectionScreen") as! SelectionViewController
        selectionVC.delegate = self
        present(selectionVC, animated: true, completion: nil)
        
    }
    
    func didTapKey(image: UIImage) {
        imgHouse.image = image
    }
    
}

