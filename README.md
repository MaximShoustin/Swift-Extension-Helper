# Swift-Extension-Helper

=========

Who came from other langueges like Java/Javascript might find thes extensions helpful


##Features

`NSData`
- `toString()`

`Double`
- `format(f: String)`
- `toString()`
- `toInt()`

`String`
- `split(splitter: String)`
- `startWith(find: String)`
- `equals(find: String)`
- `equalsIgnoreCase(find: String)`
- `contains(find: String)`
- `replace(replaceStr:String, with withStr:String)`
- `trim()`
- `removeCharsFromEnd(count:Int)`




##Installation

Create new swift file and copy/paste `MyExtensions.swift` content


##System Requirements

Xcode Version:

- Xcode 6

Can be used in applications with operating systems:

- iOS 7.0+
- Mac OS X 10.9+


##Usage

This section runs through some sample usage of Extensions.

TBD

- `contains(find: String)`

```swift
var value = "Hello world"

println(value.contains("Hello")) // true
println(value.contains("bo"))    // false
```

- `removeCharsFromEnd(count:Int)`

```swift
var str_1 = "Maxim"
println("output: \(str_1.removeCharsFromEnd(1))") // "Maxi"
println("output: \(str_1.removeCharsFromEnd(3))") // "Ma"
println("output: \(str_1.removeCharsFromEnd(8))") // ""
```

##Contact

Please open an issue for any comments, concerns, ideas, or potential pull requests - all welcome :)


##License

SwiftData is released under the MIT License.

See the LICENSE file for full details.
