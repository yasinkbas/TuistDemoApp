import ProjectDescription

let packages: [Package] = [
    Package.remote(url: "https://github.com/yasinkbas/NLab.git", requirement: .upToNextMajor(from: "1.1.1")),
    Package.remote(url: "https://github.com/yasinkbas/UILab.git", requirement: .upToNextMajor(from: "0.3.3"))
]

let dependencies: [TargetDependency] = {
    var dependencies: [TargetDependency] = []
    
    // External
    dependencies.append(contentsOf: [
        .package(product: "NLab"),
        .package(product: "UILab"),
    ])
    
    // Internal
    dependencies.append(contentsOf: [
        .project(target: "CommonKit", path: .relativeToManifest("Kits/CommonKit"))
    ])
    return dependencies
}()

let projectSettings = Settings(
    debug: Configuration(xcconfig: Path("configs/EnglishCentral-CaseProject.xcconfig")),
    release: Configuration(xcconfig: Path("configs/EnglishCentral-CaseProject.xcconfig")),
    defaultSettings: .none)

let targetSettings = Settings(
    debug: Configuration(xcconfig: Path("configs/EnglishCentral-CaseTarget.xcconfig")),
    release: Configuration(xcconfig: Path("configs/EnglishCentral-CaseTarget.xcconfig")),
    defaultSettings: .none)

let appTarget = Target(
    name: "EnglishCentral-Case",
    platform: .iOS,
    product: .app,
    bundleId: "com.yasinkbas.EnglishCentral-Case",
    infoPlist: .extendingDefault(with: [
        "UILaunchScreen": [:]
    ]),
    sources: [
        "EnglishCentral-Case/**/*.swift",
        "EnglishCentral-Case/**/*.m"
    ],
    resources: [
        "EnglishCentral-Case/Resources/**",
        "EnglishCentral-Case/**/*.storyboard", // launch storyboard
        "EnglishCentral-Case/**/*.xib", // not necessary but can stay for now
        "EnglishCentral-Case/**/*.xcassets",
    ],
    dependencies: dependencies,
    settings: targetSettings
)

let unitTestTarget = Target(
    name: "EnglishCentral-CaseTests",
    platform: .iOS,
    product: .unitTests,
    bundleId: "com.yasinkbas.EnglishCentral-CaseTests",
    infoPlist: "EnglishCentral-CaseTests/Resources/Info.plist",
    sources: ["EnglishCentral-CaseTests/Source/**"],
    dependencies: [.target(name: "EnglishCentral-Case")]
)

let uiTestTarget = Target(
    name: "EnglishCentral-CaseTests",
    platform: .iOS,
    product: .uiTests,
    bundleId: "com.yasinkbas.EnglishCentral-CaseTests",
    infoPlist: "EnglishCentral-CaseTests/Resources/Info.plist",
    sources: ["EnglishCentral-CaseTests/Source/**"],
    dependencies: [.target(name: "EnglishCentral-Case")]
)

let project = Project(
    name: "EnglishCentral-Case",
    organizationName: "com.yasinkbas.EnglishCentral-Case",
    packages: packages,
    settings: projectSettings,
    targets: [
        appTarget,
        //        unitTestTarget,
        //        uiTestTarget
    ]
)