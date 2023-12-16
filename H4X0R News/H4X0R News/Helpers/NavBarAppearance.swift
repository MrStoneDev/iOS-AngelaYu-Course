//
//  NavBarAppearance.swift
//  H4X0R News
//
//  Created by Mario Alvarado on 16/12/23.
//

import SwiftUI

struct NavBarAppearance {
    func navBarAppearance() {
        let appearance: UINavigationBarAppearance = UINavigationBarAppearance()
        
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        appearance.backgroundColor = UIColor(Color.purple.opacity(0.3))
        
        appearance.largeTitleTextAttributes = [
            .font: UIFont(name: "RubikLines-Regular", size: 32)!,
            .foregroundColor: UIColor(Color.black),
            .textEffect: NSAttributedString.TextEffectStyle.letterpressStyle
        ]
        appearance.titleTextAttributes = [
            .font: UIFont(name: "RubikLines-Regular", size: 24)!,
            .foregroundColor: UIColor(Color.black),
            .textEffect: NSAttributedString.TextEffectStyle.letterpressStyle
        ]
        
        // Inline appearance (standard height appearance)
        UINavigationBar.appearance().standardAppearance = appearance
        // Large Title appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
