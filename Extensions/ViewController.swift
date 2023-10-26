//
//  ViewController.swift
//  Extensions
//
//  Created by Batuhan Akbaba on 17.10.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    let button : UIButton = UIButton()
    let imageView: UIImageView = UIImageView()
    let label: UILabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        panamaString(string: "A man, a plan, a canal, Panama")
        primeNumber(number: 7)
        boolInverter(boolValue: true)
        twoDateDifference()
        configure()
        
    }
    
}

extension ViewController {
    
    private func configure() {
        
        view.addSubview(button)
        view.addSubview(label)
        view.addSubview(imageView)
        
        label.frame = CGRect(x: (view.frame.width - 100) / 2, y: 100, width: 200, height: 50)
        imageView.frame = CGRect(x: (view.frame.width - 200) / 2, y: label.frame.maxY + 20, width: 200, height: 200)
        imageView.contentMode = .scaleAspectFill
        
        button.layer.cornerRadius = 15
        button.setTitle("Tapped me", for: .normal)
        button.frame = CGRect(x: 20, y: imageView.frame.maxY + 20, width: view.frame.width - 40, height: 50)
        
        var image = imageView.image
        image = UIImage(named: "neon-apps")
        setBackgroundColor(.red)
        button.setBackgroundColor(.blue)
        label.setText("N E O N   A P P S")
        imageView.setImage(image!)

    }
    private func panamaString(string: String) {
        if string.isPalindrome() {
            print("The string is a palindrome.")
        } else {
            print("The string is not a palindrome.")
        }
    }
    
    private func primeNumber(number: Int) {
        if number.isPrime() {
            print("\(number) is a prime number")
        } else {
            print("\(number) is not a prime number")
        }
    }
    
    private func boolInverter(boolValue: Bool) {
        let invertedValue = boolValue.inverted()
        print(invertedValue)
    }
    private func twoDateDifference() {
        let date1 = Date()
        let date2 = Calendar.current.date(byAdding: .day, value: 7, to: date1)!

        let daysBetween = date1.days(to: date2)
        print(daysBetween)

    }
}
