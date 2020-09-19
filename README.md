# Launch at Login feature in MacOS Apps

![](https://user-images.githubusercontent.com/20956124/93679403-02c52100-facb-11ea-898b-36989d11d03e.png)

An example project demonstrating Launch at Login (launch application on system startup) feature implementation for macOS Apps in Swift (SwiftUI).

There are a couple of ways to add a login item to the application. The most used/useful way is using the [Service Management framework](https://developer.apple.com/documentation/servicemanagement). Login items installed using the Service Management framework are not visible in System Preferences and can only be removed by the application that installed them.
The other way is using a shared file list. Login items installed using a shared file list are visible in System Preferences; users have direct control over them. If you use this API, your login item can be disabled by the user.

In this example, implemented using most used method Service Management framework. Please refer to full blog post for this example: [https://jogendra.dev/implementing-launch-at-login-feature-in-macos-apps](https://jogendra.dev/implementing-launch-at-login-feature-in-macos-apps)

## License

This project is under MIT License. Please refer to [LICENSE](LICENSE) file for more info.
