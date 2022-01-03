//
//  Positions.swift
//  Budi
//
//  Created by 인병윤 on 2021/12/11.
//

import UIKit

enum Position: String, CaseIterable {
    case developer = "개발자"
    case designer = "디자이너"
    case productManager = "기획자"

    var stringValue: String {
        switch self {
        case .developer: return "developer"
        case .designer: return "designer"
        case .productManager: return "planner"
        }
    }

    var englishStringValue: String {
        switch self {
        case .developer: return "developer"
        case .designer: return "designer"
        case .productManager: return "planner"
        }
    }
    
    var characterImage: UIImage? {
        switch self {
        case .developer: return UIImage(named: "Developer")
        case .designer: return UIImage(named: "Designer")
        case .productManager: return UIImage(named: "Planner")
        }
    }
    
    var characterBackgroundImage: UIImage? {
        switch self {
        case .developer: return UIImage(named: "Developer_Background")
        case .designer: return UIImage(named: "Designer_Background")
        case .productManager: return UIImage(named: "Planner_Background")
        }
    }
    
    var characterBackgroundGrayImage: UIImage? {
        switch self {
        case .developer: return UIImage(named: "Developer_Background_Gray")
        case .designer: return UIImage(named: "Designer_Background_Gray")
        case .productManager: return UIImage(named: "Planner_Background_Gray")
        }
    }

    var teamSearchCharacter: UIImage {
        switch self {
        case .developer:
            return #imageLiteral(resourceName: "Job_Dev")
        case .designer:
            return #imageLiteral(resourceName: "Job_Design")
        case .productManager:
            return #imageLiteral(resourceName: "Job_Planner")
        }
    }

    var integerValue: Int {
        switch self {
        case .developer:
            return 1
        case .productManager:
            return 2
        case .designer:
            return 3
        }
    }
}
