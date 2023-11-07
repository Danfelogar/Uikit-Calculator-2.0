//
//  UIButton.swift
//  Uikit-Calculator
//
//  Created by Daniel Felipe on 26/10/23.
//

import UIKit

private let orange = UIColor(red: 256/255, green: 148/255, blue: 0/255, alpha: 1)

extension UIButton {

    // Border Rounded
    func round(){
        layer.cornerRadius = 40
        //layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    //Shine few moment
    func shine() {
        UIView.animate(withDuration: 0.1, animations: {
            self.alpha = 0.5
        }){ (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
            
        }
    }
    // show selection btn operation
    func selectOperation( _ selected: Bool) {
        backgroundColor = selected ? .white : orange
        setTitleColor(selected ? orange : .white, for: .normal)
    }
}
