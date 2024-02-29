//
//  SelectionViewController.swift
//  DelegatePronzip
//
//  Created by RGMCode on 24.02.24.
//

import UIKit

protocol keyDelegate {
    func didTapKey(image: UIImage)
}

class SelectionViewController: UIViewController {
    
    var delegate: keyDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func btnGreenKeyTapped(_ sender: UIButton) {
        delegate.didTapKey(image: UIImage(named: "greenHouse")!)
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func btnYellowKeyTapped(_ sender: UIButton) {
        delegate.didTapKey(image: UIImage(named: "yellowHouse")!)
        dismiss(animated: true, completion: nil)
        
    }
    
}
