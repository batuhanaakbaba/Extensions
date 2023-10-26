//
//  Extensions.swift
//  Extensions
//
//  Created by Batuhan Akbaba on 17.10.2023.
//

import Foundation
import UIKit

extension UIViewController {
    func setBackgroundColor(_ color: UIColor) {
        view.backgroundColor = color
    }
}
extension UIButton {
    func setBackgroundColor(_ color: UIColor) {
        self.backgroundColor = color
    }

    func setTitleText(_ text: String) {
        self.setTitle(text, for: .normal)
    }
}

extension UIImage {
    static func withColor(_ color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0, y: 0, width: 1, height: 1)
        UIGraphicsBeginImageContext(rect.size)
        color.setFill()
        UIRectFill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
extension UIImageView {
    func setImage(_ image: UIImage) {
        self.image = image
    }
}
extension UILabel {
    func setText(_ text: String) {
        self.text = text
    }
}

extension String {
    func isPalindrome() -> Bool {
        let cleanedString = self.lowercased().components(separatedBy: .punctuationCharacters).joined().replacingOccurrences(of: " ", with: "")
        return cleanedString == String(cleanedString.reversed())
    }
}
extension Int {
    func isPrime() -> Bool {
        if self < 2 {
            return false
        }
        for i in 2..<Int(sqrt(Double(self))) + 1 {
            if self % i == 0 {
                return false
            }
        }
        return true
    }
}
extension Bool {
    func inverted() -> Bool {
        return !self
    }
}
extension Date {
    func days(to date: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: self, to: date)
        return components.day ?? 0
    }
}



