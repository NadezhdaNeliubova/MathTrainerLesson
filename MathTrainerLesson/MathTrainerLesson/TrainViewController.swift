//
//  TrainViewController.swift
//  MathTrainerLesson
//
//  Created by Nadezhda Neliubova on 11.07.2023.
//

import UIKit

final class TrainViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var leftButton: UIButton!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var questionLabel: UILabel!
    
    
    // MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }

    // MARK: - Life cycle
    override func viewDidLoad() {
        configureButtons()
    }
    
    // MARK: - Methods
    private func configureButtons() {
        //add shadow
        [leftButton, rightButton].forEach { button in
            button.layer.shadowColor = UIColor.darkGray.cgColor
            button.layer.shadowOffset = CGSize(width: 0, height: 2) //положение и длинна тени
            button.layer.shadowOpacity = 0.4 //прозрачность (диапазон от 0 до 1)
            button.layer.shadowRadius = 3
        }
    }
}

