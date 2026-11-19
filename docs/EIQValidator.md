<p align="center">
  <img src="https://i.ibb.co/qg5d6w2/validator.png" width="180"/>
</p>

# EIQValidator

`EIQValidator` is a lightweight and extensible validation framework for iOS.  
It provides a simple way to apply validation rules on text fields (`UITextField`, `UITextView`, etc.) — making form validation cleaner, reusable, and highly customizable.

---

## Features
- ✅ Built-in validation rules for common use cases (email, required fields, min/max length, regex, and more).  
- 🧩 Supports custom rule definitions via protocol extensions.  
- 💬 Delegate and callback-based validation feedback.  
- 📦 Designed for scalability — register multiple fields and rules easily.
---

## Requirements

- iOS 15.0+  
- Swift 5.9+  
- Xcode 16.0+

---

## Installation

To use `EIQValidator`, add the following dependency in your `Package.swift` file:

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
        .product(name: "EIQValidator", package: "enliq-utilities-ios-sdk")
    ]
)
```

---

## Usage

### 1️⃣ Import and Initialize

```swift
import EIQValidator

let validator = EIQValidator()
```
---

### 2️⃣ Register Fields with Rules

```swift
validator.registerField(YOUR_UITEXTFIELD, rules: [
    EIQRequiredRule(message: "Kullanıcı adı boş bırakılamaz."),
    EIQMinLengthRule(length: 3, message: "En az 3 karakter olmalı."),
    EIQMaxLengthRule(length: 20, message: "En fazla 20 karakter olmalı.")
])
```

### 3️⃣ UnRegister Fields with Rules

```swift
validator.unregisterField(YOUR_UITEXTFIELD)
```
---

### 3️⃣ Validate Fields

#### Delegate-based Validation

```swift
extension RegisterViewController: EIQValidationDelegate {
    func validationSuccessful() {
        print("Tüm alanlar geçerli ✅")
    }

    func validationFailed(_ errors: [(any EIQValidatable, EIQValidationError)]) {
        print("Validasyon hatası ❌", errors.first?.1.errorMessage ?? "")
    }
}

validator.validate(self)
```

#### Callback-based Validation

```swift
validator.validate { errors in
    if errors.isEmpty {
        print("Validation succeeded ✅")
    } else {
        print("Validation failed ❌: \(errors.first?.1.errorMessage ?? "")")
    }
}
```

---

## Available Rules

| Rule Name|
|------------|
| EIQAlphaNumericRule
| EIQAlphaRule
| EIQCardExpiryMonthRule
| EIQCardExpiryYearRule
| EIQCharacterSetRule
| EIQConfirmationRule
| EIQEmailRule
| EIQExactLengthRule
| EIQFloatRule
| EIQFullNameRule
| EIQHexColorRule
| EIQIPV4Rule
| EIQISBNRule
| EIQMaxLengthRule
| EIQMinLengthRule
| EIQPasswordRule
| EIQPhoneNumberRule
| EIQRegexRule
| EIQRequiredRule
| EIQRule
| EIQValidationRule
| EIQZipCodeRule

> You can also define your own custom rule by extending `EIQRule`.

---

This allows you to automatically style fields during validation.

---

## Custom Rules

You can easily create your own validation rule by inheriting from `EIQRule` or another rules:

```swift
public class YOUR_CUSTOM_RULES: EIQRule {
    public func validate(_ value: String) -> Bool {
        true
    }
    
    public func errorMessage() -> String {
        return ""
    }
}
```

This allows you to extend the framework with domain-specific validation logic, such as unique formatting, custom regex patterns, or business rules.

---
