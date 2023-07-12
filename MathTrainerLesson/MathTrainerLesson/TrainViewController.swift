//
//  TrainViewController.swift
//  MathTrainerLesson
//
//  Created by Nadezhda Neliubova on 11.07.2023.
//

import Foundation
import UIKit

final class TrainViewController: UIViewController {
    @IBOutlet var secondButtonsCollection: [UIButton]!
    
    // MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        secondConfigureButtons()
    }
    
    // MARK: - Methods
    private func secondConfigureButtons() {
        //add shadow
        secondButtonsCollection.forEach { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 0, height: 2) //положение и длинна тени
            button.layer.shadowOpacity = 0.4 //прозрачность (диапазон от 0 до 1)
            button.layer.shadowRadius = 3
        }
    }
}

