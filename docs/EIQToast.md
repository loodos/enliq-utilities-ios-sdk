<p align="center">
  <img src="https://i.ibb.co/zh0Lrz6J/test.png"/>
</p>

# EIQToast

`EIQToast` is a lightweight and easy-to-use utility for displaying customizable toast notifications in your Swift applications.  
It provides a simple and flexible API to show text, icon, and custom toasts with various styles and durations.

## Features

- Simple and intuitive API for displaying toast messages.
- Supports text-only toasts, icon toasts, and fully custom views.
- Customizable duration, position, and appearance.
- Delegate system to handle toast lifecycle events.
- Thread-safe and easy to integrate into any UIKit project.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQToast`, add the following dependency in your `Package.swift` file:

```swift
dependencies: [
    .package(
        url: "https://github.com/loodos/enliq-utilities-ios-sdk.git",
        .upToNextMajor(from: "1.1.0")
    )
],
...
.target(
    name: "{Target Name}",
    dependencies: [
        .product(name: "EIQToast", package: "enliq-utilities-ios-sdk")
    ]
)
```


## Usage

### Showing a Text Toast

You can display a simple text toast using the `showTextToast` method on `EIQToastManager.shared`. This method provides a convenient way to show a toast with a title, optional subtitle, and customizable configuration.

#### Parameters

| Parameter         | Type                      | Default           | Description                                                                                     |
|-------------------|---------------------------|-------------------|-------------------------------------------------------------------------------------------------|
| `title`           | `String`                  | —                 | The main text to display in the toast.                                                          |
| `subtitle`        | `String?`                 | `nil`             | An optional subtitle displayed below the title.                                                 |
| `enableLongPress` | `Bool`                    | `true`            | Enables dismissal of the toast via long press gesture.                                          |
| `enablePan`       | `Bool`                    | `true`            | Enables dismissal of the toast via pan (swipe) gesture.                                         |
| `enableTap`       | `Bool`                    | `true`            | Enables dismissal of the toast via tap gesture.                                                 |
| `delay`           | `TimeInterval`            | `2.0`             | Duration in seconds before the toast automatically dismisses.                                   |
| `haptic`          | `EIQToastHaptic`          | `.none`           | Haptic feedback style to play when the toast is shown.                                          |
| `viewConfig`      | `EIQToastViewConfiguration` | `.init()`       | Configuration for the toast's appearance (colors, fonts, etc).                                  |
| `config`          | `EIQToastConfiguration`   | `.init()`         | Configuration for toast behavior (position, animation, duration, etc).                          |
| `delegate`        | `EIQToastDelegate?`       | `nil`             | An optional delegate to receive toast lifecycle events.                                         |

#### Example Usage

```swift
// Show a basic toast with default configuration:
EIQToastManager.shared.showTextToast(title: "Hello, world!")

// Show a toast with custom appearance:
let customViewConfig = EIQToastViewConfiguration(
    backgroundColor: .systemGreen,
    titleFont: .boldSystemFont(ofSize: 18)
)
EIQToastManager.shared.showTextToast(
    title: "Welcome!",
    viewConfig: customViewConfig
)

// Show a toast with custom configuration:
let customConfig = EIQToastConfiguration(
    dismissables: [.tap, .time(time: 4.0)],
    direction: .top,
    animationTime: 0.5
)
EIQToastManager.shared.showTextToast(
    title: "Success",
    subtitle: "Your changes have been saved.",
    config: customConfig
)

// Show a toast with delegate handling:
EIQToastManager.shared.showTextToast(
    title: "Hello!",
    delegate: self // where self conforms to EIQToastDelegate
)
```
---

### Showing an Icon Toast

You can display a toast with an icon using the `showIconToast` method on `EIQToastManager.shared`. This method allows you to show a toast with an image icon, optional tint, title, subtitle, and customizable configuration.

#### Parameters

| Parameter         | Type                      | Default           | Description                                                                                     |
|-------------------|---------------------------|-------------------|-------------------------------------------------------------------------------------------------|
| `image`           | `UIImage`                 | —                 | The icon image to display in the toast.                                                        |
| `imageTint`       | `UIColor?`                | `nil`             | Optional tint color to apply to the icon image.                                                |

#### Example Usage

```swift
// Show an icon toast with default configuration:
let icon = UIImage(systemName: "star.fill")!
EIQToastManager.shared.showIconToast(
    image: icon,
    title: "Favorite",
    subtitle: "Item added to favorites"
)

// Show an icon toast with image tint and custom view configuration:
let tintedIcon = UIImage(systemName: "heart.fill")!
let customViewConfig = EIQToastViewConfiguration(
    backgroundColor: .systemPink,
    titleFont: .boldSystemFont(ofSize: 18),
    iconSize: CGSize(width: 30, height: 30)
)
EIQToastManager.shared.showIconToast(
    image: tintedIcon,
    imageTint: .white,
    title: "Liked",
    viewConfig: customViewConfig
)

// Show an icon toast with custom configuration and delegate:
let customConfig = EIQToastConfiguration(
    dismissables: [.tap, .time(time: 3.0)],
    direction: .top,
    animationTime: 0.4
)
EIQToastManager.shared.showIconToast(
    image: UIImage(systemName: "bell.fill")!,
    title: "Notification",
    subtitle: "You have a new message",
    config: customConfig,
    delegate: self // where self conforms to EIQToastDelegate
)
```
---

### Showing a Custom Toast

You can display any custom `UIView` as a toast using the `showCustomToast` method on `EIQToastManager.shared`. This method gives you full control over the toast's content and layout.

#### Parameters

| Parameter         | Type                        | Default           | Description                                                                                     |
|-------------------|-----------------------------|-------------------|-------------------------------------------------------------------------------------------------|
| `view`            | `UIView`                    | —                 | The custom view to display as the toast.                                                        |
| `enableLongPress` | `Bool`                      | `true`            | Enables dismissal of the toast via long press gesture.                                          |
| `enablePan`       | `Bool`                      | `true`            | Enables dismissal of the toast via pan (swipe) gesture.                                         |
| `enableTap`       | `Bool`                      | `true`            | Enables dismissal of the toast via tap gesture.                                                 |
| `delay`           | `TimeInterval`              | `2.0`             | Duration in seconds before the toast automatically dismisses.                                   |
| `haptic`          | `EIQToastHaptic`            | `.none`           | Haptic feedback style to play when the toast is shown.                                          |
| `config`          | `EIQToastConfiguration`     | `.init()`         | Configuration for toast behavior (position, animation, etc).                                    |
| `delegate`        | `EIQToastDelegate?`         | `nil`             | An optional delegate to receive toast lifecycle events.                                         |

#### Example Usage

```swift
EIQToastManager.shared.showCustomToast(
    view: MyCustomToastView(text: "EIQToast"),
    enableLongPress: true,
    enablePan: true,
    enableTap: true,
    delay: 2.0,
    haptic: .none,
    config: .init(direction: .bottom),
    delegate: nil
)
```
---

### Custom Toast View Example

`MyCustomToastView` is an example of a custom view conforming to `EIQToastView`. This allows you to create fully customized toast content with your own layout and styling.

```swift

import UIKit
import EIQToast

public final class MyCustomToastView: UIView, EIQToastView {
    private lazy var label: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    // MARK: - Privates
    private let config: EIQToastViewConfiguration
    
    private var toast: EIQToast?
    private let fixedHeight: CGFloat?
    private let fixedWidth: CGFloat?
    public init(
        text: String,
        config: EIQToastViewConfiguration = EIQToastViewConfiguration(),
        fixedHeight: CGFloat? = nil,
        fixedWidth: CGFloat? = nil
    ) {
        self.config = config
        self.fixedHeight = fixedHeight
        self.fixedWidth = fixedWidth
        super.init(frame: .zero)
        self.label.text = text
        addSubview(label)
    }
    
    public override func removeFromSuperview() {
      super.removeFromSuperview()
      self.toast = nil
    }
    
   public func createView(for toast: EIQToast) {
        self.toast = toast
        guard let superview else { return }
        translatesAutoresizingMaskIntoConstraints = false
        
        var constraints: [NSLayoutConstraint] = [
            leadingAnchor.constraint(greaterThanOrEqualTo: superview.leadingAnchor, constant: 10),
            trailingAnchor.constraint(lessThanOrEqualTo: superview.trailingAnchor, constant: -10),
            centerXAnchor.constraint(equalTo: superview.centerXAnchor)
        ]
        
        /// Height:
        /// - If a fixed height is provided, enforce an exact height (==).
        /// - Otherwise, only enforce a minimum (≥) so the view can expand with content.
        if let fixedHeight = fixedHeight {
            constraints.append(heightAnchor.constraint(equalToConstant: fixedHeight))
        } else {
            constraints.append(heightAnchor.constraint(greaterThanOrEqualToConstant: config.minHeight))
        }

        /// Width:
        /// - If a fixed width is provided, enforce an exact width (==).
        /// - Otherwise, only enforce a minimum (≥); actual width will be determined
        ///   by content size up to the available space (bounded by leading/trailing).
        if let fixedWidth = fixedWidth {
            constraints.append(widthAnchor.constraint(equalToConstant: fixedWidth))
        } else {
            constraints.append(widthAnchor.constraint(greaterThanOrEqualToConstant: config.minWidth))
        }
        
        switch toast.config.direction {
        case .bottom:
            bottomAnchor.constraint(equalTo: superview.layoutMarginsGuide.bottomAnchor, constant: 0).isActive = true
        case .top:
            topAnchor.constraint(equalTo: superview.layoutMarginsGuide.topAnchor, constant: 0).isActive = true
        case .center:
            centerYAnchor.constraint(equalTo: superview.layoutMarginsGuide.centerYAnchor, constant: 0).isActive = true
        }
        
        NSLayoutConstraint.activate(constraints)
        addSubviewConstraints()
        DispatchQueue.main.async {
            self.style()
        }
    }
    
    public override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        UIView.animate(withDuration: 0.5) {
            self.style()
        }
    }
    
    private func style() {
        layoutIfNeeded()
        clipsToBounds = true
        layer.zPosition = 999
        layer.cornerRadius = 0
        backgroundColor = .primaryTextColor
        addShadow()
    }
    
    private func addSubviewConstraints() {
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            label.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            label.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25),
            label.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -25)
        ])
    }
    
    private func addShadow() {
        layer.masksToBounds = false
        layer.shadowOffset = CGSize(width: 0, height: 4)
        layer.shadowColor = UIColor.black.withAlphaComponent(0.08).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 8
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

```

### Configuration

This section covers configuration structs used to customize the appearance and behavior of `showTextToast`.

#### `EIQToastViewConfiguration`

Configures the appearance of toast views, including background color, fonts, corner radius, and more.

| Parameter           | Type               | Default                      | Description                                              |
|---------------------|--------------------|------------------------------|----------------------------------------------------------|
| `backgroundColor`   | `UIColor`          | `.black.withAlphaComponent(0.8)` | Background color of the toast view.                      |
| `titleFont`         | `UIFont`           | `.boldSystemFont(ofSize: 16)`| Font used for the title text.                            |
| `titleColor`        | `UIColor`          | `.white`                     | Color of the title text.                                 |
| `subtitleFont`      | `UIFont`           | `.systemFont(ofSize: 14)`    | Font used for the subtitle text.                         |
| `subtitleColor`     | `UIColor`          | `.white`                     | Color of the subtitle text.                              |
| `cornerRadius`      | `CGFloat`          | `12`                        | Corner radius of the toast view.                         |
| `maxWidth`          | `CGFloat`          | `280`                       | Maximum width of the toast view.                         |
| `padding`           | `UIEdgeInsets`     | `UIEdgeInsets(top: 12, left: 16, bottom: 12, right: 16)` | Padding inside the toast view.                            |
| `iconSize`          | `CGSize`           | `CGSize(width: 24, height: 24)` | Size of the icon if displayed.                           |

**Example:**

```swift
let viewConfig = EIQToastViewConfiguration(
    backgroundColor: .systemIndigo,
    titleFont: .boldSystemFont(ofSize: 20),
    titleColor: .white,
    subtitleFont: .italicSystemFont(ofSize: 16),
    subtitleColor: .white,
    cornerRadius: 16,
    maxWidth: 300,
    padding: UIEdgeInsets(top: 16, left: 20, bottom: 16, right: 20),
    iconSize: CGSize(width: 28, height: 28)
)
```

#### `EIQToastConfiguration`

Configures the behavior and appearance of the toast presentation, including position, animations, interaction, layout, and the view to display.

| Parameter           | Type               | Default                      | Description                                              |
|---------------------|--------------------|------------------------------|----------------------------------------------------------|
| `direction`         | `EIQToastDirection`| `.bottom`                   | Direction from which the toast appears (`.top`, `.bottom`, `.center`). |
| `dismissables`      | `[EIQDismissable]`  | `[.tap, .time(time: 2.0)]`  | Interaction types that dismiss the toast (`tap`, `longPress`, `time(time:)`, `swipe(direction:)`). |
| `animationTime`     | `TimeInterval`     | `0.3`                       | Duration of the toast's enter and exit animations.      |
| `enteringAnimation` | `EIQToastAnimationType` | `.default`              | Animation type when the toast appears (`slide`, `fade`, `scaleAndSlide`, `scale`, `custom`, `default`). |
| `exitingAnimation`  | `EIQToastAnimationType` | `.default`              | Animation type when the toast disappears (`slide`, `fade`, `scaleAndSlide`, `scale`, `custom`, `default`). |
| `background`        | `EIQBackground`    | `.none`                     | Background style behind the toast (`none`, `color(color:)`). |
| `allowToastOverlap` | `Bool`             | `false`                     | Whether multiple toasts can overlap on screen.          |
| `fixedSize`         | `CGSize?`          | `nil`                       | Fixed size for the toast view; if `nil`, size is dynamic.|
| `view`              | `UIView`           | `UIView()`                  | The custom view to be displayed as the toast.           |

**Example:**

```swift
let toastConfig = EIQToastConfiguration(
    direction: .top,
    dismissables: [.tap, .longPress, .time(time: 3.5), .swipe(direction: .up)],
    animationTime: 0.5,
    enteringAnimation: .fade,
    exitingAnimation: .slide,
    background: .color(color: UIColor.black.withAlphaComponent(0.5)),
    allowToastOverlap: true,
    fixedSize: CGSize(width: 320, height: 80),
    view: UIView()
)
```

### Delegate

`EIQToast` provides a delegate protocol, `EIQToastDelegate`, which allows you to respond to various lifecycle events of a toast. Implementing this delegate enables you to handle actions such as when a toast is about to be shown, has been shown, is about to be dismissed, or has been dismissed.

| Method                          | Description                                                       |
|--------------------------------|-------------------------------------------------------------------|
| `toastWillShow(_ toast: EIQToast)` | Called just before the toast is displayed.                       |
| `toastDidShow(_ toast: EIQToast)`  | Called immediately after the toast has been displayed.           |
| `toastWillDismiss(_ toast: EIQToast)` | Called just before the toast is dismissed.                      |
| `toastDidDismiss(_ toast: EIQToast)`  | Called immediately after the toast has been dismissed.          |
