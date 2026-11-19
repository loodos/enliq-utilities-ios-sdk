<p align="center">
  <img src="https://i.ibb.co/zh0Lrz6J/test.png"/>
</p>

# EIQAttributedBuilder

`EIQAttributedBuilder` is a lightweight and chainable utility for building complex `NSAttributedString` instances in Swift.  
It simplifies adding text, styling (fonts, colors, spacing), images, and HTML content in a fluent and readable way.

## Features

- Chainable and expressive API for building attributed strings.
- Supports fonts, colors, alignment, spacing, line height, links, underline, strikethrough, and more.
- Can append images and HTML content directly.
- Replace placeholders dynamically with attributed replacements.
- Supports `clearDefaultAttributes()` and `clean()` methods for reusability.

## Requirements

- iOS 15.0+
- Swift 5.9+
- Xcode 16.0+

## Installation

To use `EIQAttributedBuilder`, add the following dependency in your `Package.swift` file:

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
        .product(name: "EIQAttributedBuilder", package: "enliq-utilities-ios-sdk")
    ]
)
```

## Usage

```swift
import EIQAttributedBuilder
import UIKit

let builder = EIQAttributedBuilder()
    .text("Hello ", attributes: [.font(.boldSystemFont(ofSize: 16)), .textColor(.black)])
    .text("World!", attributes: [.font(.systemFont(ofSize: 16)), .textColor(.systemBlue)])
    .image(UIImage(systemName: "star.fill")!, size: CGSize(width: 16, height: 16))
    .text("\nThis is a styled paragraph.", attributes: [.lineSpacing(6), .alignment(.center)])

let label = UILabel()
label.numberOfLines = 0
label.attributedText = builder.attributedString
```

### HTML Example

```swift
let htmlString = "<h1>Welcome</h1><p>This is <b>HTML content</b> rendered as attributed text.</p>"
let htmlBuilder = EIQAttributedBuilder()
    .html(htmlString, attributes: [.font(.systemFont(ofSize: 14)), .textColor(.darkGray)])

let textView = UITextView()
textView.attributedText = htmlBuilder.attributedString
```

## Advanced Example

```swift
let placeholderBuilder = EIQAttributedBuilder()
    .text("Your score: {{score}}", attributes: [.font(.systemFont(ofSize: 16))])

let replacement = EIQAttributedBuilder()
    .text("95", attributes: [.textColor(.systemGreen)])
    .attributedString

placeholderBuilder.replace(placeholder: "{{score}}", replacements: [replacement])

print(placeholderBuilder.attributedString.string)
```

> **Explanation:**  
> This example demonstrates how to dynamically replace placeholders inside an attributed text.  
> If a string contains any key or variable (like `{{score}}`, `{{name}}`, etc.), the `replace(placeholder:replacements:)` function can substitute them with fully formatted `NSAttributedString` values.  
>  
> It is especially useful when you want to highlight dynamic values such as a user’s score or name with custom colors or styles.
