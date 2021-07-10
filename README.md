# Description
UIDeviceHardware is a class originally created in a [gist](https://gist.github.com/1323251) by [Jaybles](https://github.com/Jaybles). It allows querying of the current users device, and returns a human formatted string.

It is written as a class method, to allow use without direct instantiation.

## Usage

```objective-c

// "iPhone 5C (GSM)"
NSString *platformString = [UIDeviceHardware platformString];
    
// "iPhone 5C"
NSString *simpleString = [UIDeviceHardware platformStringSimple];
```

## Installation

This class can be installed with **Swift Package Manager**, **Cocoapods**, or by **directly copying the files** into your source code.

### Swift Package Manager

Add the package to your Package.swift file:

```swift
dependencies: [
    .package(url: "https://github.com/squarefrog/UIDeviceIdentifier", .upToNextMajor(from: "1.7.0"))
],
```

Then import as follows:
```objective-c
// ObjC
@import UIDeviceIdentifier;
```

```swift
// Swift
import UIDeviceIdentifier
```

### Cocoapods

Add the cocoapod to your Podfile:
```ruby
pod 'UIDeviceIdentifier', :git => 'https://github.com/squarefrog/UIDeviceIdentifier.git'
```

Import the file into your Objective-C file:
```objective-c
// ObjC
#import <UIDeviceIdentifier/UIDeviceHardware.h>
```

### Copying the files

Copy `UIDeviceHardware.{h/m}` into your project. Then just import the header:

```objective-c
#import "UIDeviceHardware.h"
```

## License
UIDeviceHardware is available under the MIT license. See the LICENSE file for more info.
