//
//  ViewController.swift
//  delegates & protocols
//
//  Created by said fatah on 5/4/2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var chooseButton: UIButton!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var sideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        chooseButton.layer.cornerRadius = chooseButton.frame.height / 2
    }
 
    @IBAction func chooseButtonTapped(_ sender: UIButton) {
        let selectionView = storyboard?.instantiateViewController(withIdentifier: "selection_screen") as! SelectionScreenViewController
        selectionView.selectionDelegate = self
        present(selectionView, animated: true, completion: nil)
    }
    
}

extension ViewController : SideSelectionDelegate {
    func didTapChoice(image: UIImage, side: String, color: UIColor) {
        mainImage.image = image
        sideLabel.text = side
        view.backgroundColor = color
    }
}

