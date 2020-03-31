//
//  Strings+Localisable.swift
//  UITestSample
//
//  Created by Salunke, Swapnil Uday (US - Mumbai) on 30/03/20.
//  Copyright © 2020 Swapnil Salunke. All rights reserved.
//

import UIKit

extension String {
    
    /*
     Swift friendly localization syntax, replaces NSLocalizedString
     
     - Returns: The localized string.
    */
    func localized() -> String {
        return localized(tableName: nil, bundle: Bundle.main)
    }
    
    /*
     Swift friendly localization syntax, replaces NSLocalizedString.
     
     - parameter tableName: The receiver’s string table to search. If tableName is `nil`
     or is an empty string, the method attempts to use `Localizable.strings`.
     
     - parameter bundle: The receiver’s bundle to search. If bundle is `nil`,
     the method attempts to use main bundle.
     
     - returns: The localized string.
     */
    func localized(tableName: String?, bundle: Bundle?) -> String {
        let bundle: Bundle = bundle ?? Bundle.main
        return bundle.localizedString(forKey: self, value: nil, table: tableName)
    }
}
