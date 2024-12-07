//
//  Validator.swift
//  MGValidator
//
//  Created by Mahesh Giri on 07/12/24.
//

import Foundation

public struct Validator {
    public static func validEmail(_ email: String) -> Bool {
        let emailRegEx = "[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailPred = NSPredicate (format: "SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    
    public static func validPassword(_ password: String) -> Bool {
        let passwordRegEx = "^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*])[A-Za-z0-9!@#$%^&*]{8,}$"
        let passwordPred = NSPredicate (format: "SELF MATCHES %@", passwordRegEx)
        return passwordPred.evaluate(with: password)
    }
    
    public static func validPhoneNumber(_ phoneNumber: String) -> Bool {
        let phoneNumberRegEx = "^[2-9]\\d{9}$"
        let phoneNumberPred = NSPredicate (format: "SELF MATCHES %@", phoneNumberRegEx)
        return phoneNumberPred.evaluate(with: phoneNumber)
    }
    
    public static func validName(_ name: String) -> Bool {
        let nameRegEx = "^[A-Za-z]{2,}$"
        let namePred = NSPredicate (format: "SELF MATCHES %@", nameRegEx)
        return namePred.evaluate(with: name)
    }
    
    public static func validAddress(_ address: String) -> Bool {
        let addressRegEx = "^[A-Za-z0-9]{2,}$"
        let addressPred = NSPredicate (format: "SELF MATCHES %@", addressRegEx)
        return addressPred.evaluate(with: address)
    }
    
    public static func printWelcomeMessage() {
        print("Welcome to the SwiftUI Login App!")
    }
}
