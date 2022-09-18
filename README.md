# Description
UIDeviceHardware is a class originally created in a [gist](https://gist.github.com/1323251) by [Jaybles](https://github.com/Jaybles). It allows querying of the current users device, and returns a human formatted string.

It is written as a class method, to allow use without direct instantiation.

## ⚠️ Note

I don't use this helper much anymore, so I'm not keeping up to date with device models. While I welcome Pull Requests to update the model, I'd recommend moving over to something more modern, like [DeviceKit](https://github.com/devicekit/DeviceKit).

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

## Licence
UIDeviceHardware is available under the MIT licence. See the LICENCE file for more info.
