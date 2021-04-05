//
//  LocalLocalizedString.swift
//  Performa_IT
//
//  Created by Liellison Menezes on 05/04/21.
//

import Foundation

public func LocalLocalizedString(_ key: String, tableName: String? = nil, bundle: Bundle? = nil, value: String = "", comment: String) -> String {
    if let receivedBundle = bundle {
        guard let localizedBundle = LocaleManager.shared.getLocalizedBundle(bundle: receivedBundle) else {
            return NSLocalizedString(key, tableName: tableName, bundle: receivedBundle, value: value, comment: comment)
        }
        return localizedBundle.localizedString(forKey: key, value: value, table: tableName)
    }

    // Try to get overrides from Main Bundle
    if let localizedMainBundle = LocaleManager.shared.getLocalizedBundle() {
        let localizedString = localizedMainBundle.localizedString(forKey: key, value: value, table: tableName)
        // This means it was not possible to localize the string
        guard localizedString == key else {
            return localizedString
        }
    }

    // Try to get from WTMPlatform Bundle
    let platformBundle = Bundle(for: LocaleManager.self)
    guard let localizedPlatformBundle = LocaleManager.shared.getLocalizedBundle(bundle: platformBundle) else {
        return NSLocalizedString(key, tableName: tableName, value: value, comment: comment)
    }
    return localizedPlatformBundle.localizedString(forKey: key, value: value, table: tableName)
}
