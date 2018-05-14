# 获取APP配置信息

- 代码：

```
	//获取当前程序唯一标识符-BundleID
    print("程序唯一标识符：\(String(describing: Bundle.main.bundleIdentifier))")
    //获取当前程序包所有配置信息
    print("获取当前程序包所有配置信息:\(String(describing: Bundle.main.infoDictionary))")
    //获取当前应用名称
    print("当前应用名称:\(String(describing: Bundle.main.object(forInfoDictionaryKey: "CFBundleName")))")
```

- 输出控制台打印：

```
程序唯一标识符：Optional("com.motion.test.---")
获取当前程序包所有配置信息:Optional(["BuildMachineOSBuild": 17C205, "DTPlatformName": iphonesimulator, "DTPlatformVersion": 11.3, "CFBundleDevelopmentRegion": en, "DTXcode": 0930, "CFBundleIdentifier": com.motion.test.---, "DTCompiler": com.apple.compilers.llvm.clang.1_0, "CFBundleShortVersionString": 1.0, "CFBundleExecutable": IOSDemo, "DTPlatformBuild": , "LSRequiresIPhoneOS": 1, "CFBundleVersion": 1, "UILaunchStoryboardName": LaunchScreen, "CFBundleSupportedPlatforms": <__NSArrayM 0x600000049360>(
iPhoneSimulator
)
, "CFBundleInfoDictionaryVersion": 6.0, "DTSDKBuild": 15E217, "UIDeviceFamily": <__NSArrayM 0x6000000492d0>(
1,
2
)
, "CFBundleNumericVersion": 16809984, "UISupportedInterfaceOrientations": <__NSArrayM 0x600000049240>(
UIInterfaceOrientationPortrait,
UIInterfaceOrientationLandscapeLeft,
UIInterfaceOrientationLandscapeRight
)
, "DTSDKName": iphonesimulator11.3, "UIMainStoryboardFile": Main, "DTXcodeBuild": 9E145, "CFBundlePackageType": APPL, "CFBundleName": IOSDemo, "UIRequiredDeviceCapabilities": <__NSArrayM 0x6000000492a0>(
armv7
)
, "MinimumOSVersion": 11.3])
```