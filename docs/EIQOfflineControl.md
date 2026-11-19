# EIQOfflineControl

`EIQOfflineControl` is a Swift package designed to monitor the internet connection status and type (WiFi, Cellular, or None) on iOS devices. It provides real-time connection updates and allows you to easily integrate network status monitoring into your app.

## Features

- Monitors the device's internet connection status.
- Detects the type of connection: WiFi, Cellular, or None.
- Provides a callback for connection status and type changes.
- Simple and lightweight integration for mobile applications.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQOfflineControl`, add the following dependency in your `Package.swift` file:

```swift
    dependencies: [
        ...
        .package(
            url: "https://github.com/loodos/enliq-utilities-ios-sdk.git",
            .upToNextMajor(from: "0.0.0")
        )
    ],
    ....
    targets: [
        ...,
        .target(
            name: "{Target Name}",
            dependencies: [
                ...,
                .product(name: "EIQOfflineControl", package: "enliq-utilities-ios-sdk")
            ]
        ),
        ...
    ]
```

## Usage
Here is an example of how to use EIQOfflineControl to monitor the network connection on a UIViewController:

```swift
import EIQOfflineControl

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start monitoring the internet connection
        EIQOfflineControl.shared.connectionStatusChanged = { isConnected, connectionType in
            if isConnected {
                print("Connected to the internet via \(connectionType)")
            } else {
                print("No internet connection")
            }
        }
        
        EIQOfflineControl.shared.startMonitoring()
    }
    
    deinit {
        // Stop monitoring when the view controller is deallocated
        EIQOfflineControl.shared.stopMonitoring()
    }
}
```

On the other hand, the connection status can be monitored on App Delegate. Then some alert or event sending mechanism can implemented: 

```swift
import UIKit
import EIQOfflineControl

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication, 
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        
        // Start monitoring the internet connection
        EIQOfflineControl.shared.connectionStatusChanged = { isConnected, connectionType in
            if isConnected {
                // Send some evet with the connectionType
            } else {
                // Show the connection alert according to the window or top most scene.
            }
        }
                
        return true
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Optionally, you can stop monitoring the internet connection when the app is about to terminate
        EIQOfflineControl.shared.stopMonitoring()
    }
}
```

Additionally, you can use the `isConnected` and `connectionType` public get variables for getting current statuses.

## Network Connection Types

The EIQOfflineControl class provides an enum EIQNetworkConnectionType that defines the type of network connection:

```swift
public enum EIQNetworkConnectionType {
    case wifi
    case cellular
    case none
}
```

You can use this enum to determine if the user is connected via WiFi, Cellular, or has no connection.

##  Unit Tests
This package also includes unit tests to ensure proper functionality. The tests are located in the EIQOfflineControlTests target. To run the tests, simply select Product > Test from the Xcode menu or use the shortcut Cmd + U. The `EIQNetworkConnectionMonitorHelper` class created as mocking helper of class.
