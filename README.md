# TronKit.Swift



## Usage

### Initialization

First you need to initialize an `TronKit.Kit` instance

```swift
import TronKit

let address = try Address(hex: "0x...")

let TronKit = try Kit.instance(
        address: address,
        walletId: "unique_wallet_id",
        minLogLevel: .error
)
```

### Starting and Stopping

`TronKit.Kit` instance requires to be started with `start` command. This start the process of synchronization with the blockchain state.

```swift
TronKit.start()
TronKit.stop()
```

## Installation

### Swift Package Manager


```swift
dependencies: [
    .package(url: "https://github.com/curdicu/TronKit.Swift.git", .upToNextMajor(from: "1.0.0"))
]
```

## Prerequisites

* Xcode 10.0+
* Swift 5.5+
* iOS 13+
