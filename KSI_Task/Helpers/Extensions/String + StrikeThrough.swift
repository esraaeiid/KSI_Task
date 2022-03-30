//
//  String + StrikeThrough.swift
//  KSI_Task
//
//  Created by Esraa on 29/03/2022.
//

import Foundation
import UIKit


extension String {

    func strikeThrough() -> NSMutableAttributedString {

        let attributedText = NSMutableAttributedString(
            string: self,
            attributes: [.strikethroughStyle: NSUnderlineStyle.single.rawValue]
        )
        return attributedText
    }

}
