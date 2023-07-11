//
//  TrainViewController.swift
//  MathTrainerLesson
//
//  Created by Nadezhda Neliubova on 11.07.2023.
//

import Foundation
import UIKit

final class TrainViewController: UIViewController {
    // MARK: - Properties
    var type: MathTypes = .add {
        didSet {
            print(type)
        }
    }
}

