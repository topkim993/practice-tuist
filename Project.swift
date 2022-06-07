import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(
    name: "PracticeTuistApp",
    platform: .iOS,
    packages: [
        .local(path: "Targets/Finance")
    ],
    targetDependencies: [
        .package(product: "FinanceHome")
    ]
)

