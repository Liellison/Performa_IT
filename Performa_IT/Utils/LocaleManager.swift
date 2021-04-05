//
//  LocaleManager.swift
//  Performa_IT
//
//  Created by Liellison Menezes on 05/04/21.
//

import Foundation

public class LocaleManager {

    public static var shared: LocaleManager = {
        let instance = LocaleManager()
        return instance
    }()

    public var locale: Locale = Locale.current

    private(set) var language: String?

    func getLocalizedBundle(bundle: Bundle = Bundle.main) -> Bundle? {
        guard let bundlePath = bundle.path(forResource: language, ofType: "lproj"),
        let localizedBundle = Bundle(path: bundlePath) else {
            return nil
        }
        return localizedBundle
    }

    private init() {}
}
