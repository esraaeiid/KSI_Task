//
//  UIFont + Size.swift
//  KSI_Task
//
//  Created by Esraa on 27/03/2022.
//

import Foundation
import UIKit

extension UIFont {
    class func cairoBlack(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-Black", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoBold(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-Bold", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoExtraBold(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-ExtraBold", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoExtraLight(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-ExtraLight", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoLight(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-Light", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoMedium(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-Medium", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoRegular(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-Regular", size: size) else {
            return UIFont()
        }
        return font
    }

    class func cairoSemiBold(with size: CGFloat) -> UIFont {
        guard let font = UIFont(name: "Cairo-SemiBold", size: size) else {
            return UIFont()
        }
        return font
    }

}


