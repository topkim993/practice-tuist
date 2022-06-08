import ProjectDescription
import ProjectDescriptionHelpers

let project = Project.app(
    name: "PracticeTuistApp",
    platform: .iOS,
    targetDependencies: [
        .external(name: "FinanceHome")
    ]
)

