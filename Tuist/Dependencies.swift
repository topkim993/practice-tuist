//
//  Dependencies.swift
//  Config
//
//  Created by G00332 on 8/6/2022.
//

import ProjectDescription

let dependencies = Dependencies(
    swiftPackageManager: [
        .local(path: .relativeToRoot("Targets/Finance"))
    ],
    platforms: [.iOS]
)

