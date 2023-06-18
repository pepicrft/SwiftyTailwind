# SwiftyTailwind

**SwiftyTailwind** is a Swift Package to lazily download and run the Tailwind CLI from a Swift project (e.g. [Vapor](https://vapor.codes) app or [Publish](https://github.com/JohnSundell/Publish) project). 

## Usage

First, you need to add `SwiftyTailwind` as a dependency in your project's `Package.swift`:

```swift
.package(url: "https://github.com/pepicrft/SwiftyTailwind.git", .upToNextMinor(from: "0.1.0"))
```

Once added, you'll create an instance of `SwiftyTailwind` specifying the version you'd like to use and where you'd like it to be downloaded.

```swift
let tailwind = SwiftyTailwind(version: .latest, directory: "./cache")
```

If you don't pass any argument, it defaults to the latest version in the system's default temporary directory. If you work in a team, we recommend fixing the version to minimize non-determinism across environments.

### Initializing a `tailwind.config.js`

You can create a `tailwind.config.js` configuration file by running the `initialize` function on the `SwiftyTailwind` instance:


```swift
try await tailwind.initialize()
```

### Running Tailwind

To run Tailwind against a project, you can use the `run` function:

```swift
try await subject.run(input: inputCSSPath, output: outputCSSPath, .content("views/**/*.html"))
```

## Sponsor

If you appreciate this work, I kindly invite you to consider [sponsoring me](https://github.com/sponsors/pepicrft). Your support brings me one step closer to realizing my dream of making a living through open source contributions. With your sponsorship, I can continue dedicating my time and effort to creating valuable open source projects and providing ongoing support to the community. Together, let's fuel the advancement of open source and pave the way for a sustainable future.