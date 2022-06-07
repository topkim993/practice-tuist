import ProjectDescription

/// Project helpers are functions that simplify the way you define your project.
/// Share code to create targets, settings, dependencies,
/// Create your own conventions, e.g: a func that makes sure all shared targets are "static frameworks"
/// See https://docs.tuist.io/guides/helpers/

extension Project {

    // MARK: - Public
    
    public static func app(
        name: String,
        platform: Platform,
        packages: [Package] = [],
        targetDependencies: [TargetDependency]
    ) -> Project {
        let targets = makeAppTargets(
            name: name,
            platform: platform,
            dependencies: targetDependencies
        )
        return Project(
            name: name,
            organizationName: "tuist.io",
            packages: packages,
            targets: targets
        )
    }

    
    // MARK: - Private

    private static func makeAppTargets(
        name: String,
        platform: Platform,
        dependencies: [TargetDependency]
    ) -> [Target] {
        let platform: Platform = platform
        let infoPlist: [String: InfoPlist.Value] = [
            "CFBundleShortVersionString": "1.0",
            "CFBundleVersion": "1",
            "UIMainStoryboardFile": "",
            "UILaunchStoryboardName": "LaunchScreen"
            ]

        let mainTarget = Target(
            name: name,
            platform: platform,
            product: .app,
            bundleId: "io.tuist.\(name)",
            deploymentTarget: .iOS(
                targetVersion: "14.0",
                devices: [.iphone, .ipad]
            ),
            infoPlist: .extendingDefault(with: infoPlist),
            sources: ["Targets/\(name)/Sources/**"],
            resources: ["Targets/\(name)/Resources/**"],
            dependencies: dependencies
        )
        return [mainTarget]
    }
}

