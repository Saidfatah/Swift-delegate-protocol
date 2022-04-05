//
//  SelectionScreenViewController.swift
//  delegates & protocols
//
//  Created by said fatah on 5/4/2022.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image : UIImage , side : String , color : UIColor)
}

class SelectionScreenViewController: UIViewController {
    @IBOutlet weak var rebelChoiceButton: UIButton!
    @IBOutlet weak var imperialChoiceButton: UIButton!
    var selectionDelegate: SideSelectionDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onRebelButtonTap(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "luke")!, side: "luke skyewalker", color: .cyan)
        dismiss(animated: true, completion: nil)
        
    }
    
    @IBAction func onImperialButtonTap(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(named: "vader")!, side: "Darth Vader", color: .red)
        dismiss(animated: true, completion: nil)
    }
}
