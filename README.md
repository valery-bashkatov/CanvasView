# CanvasView
`CanvasView` allows you to draw curves inside the view in the convenient way.

## Requirements
- iOS 9.0+
- Swift 4.1+

## Installation
### Carthage
To integrate `CanvasView` into your project using [Carthage](https://github.com/Carthage/Carthage), specify it in your `Cartfile`:

```
github "valery-bashkatov/CanvasView" ~> 3.0.0
```
And then follow the [instructions](https://github.com/Carthage/Carthage#if-youre-building-for-ios-tvos-or-watchos) to install the framework.

## Documentation
API Reference is located at [http://valery-bashkatov.github.io/CanvasView](http://valery-bashkatov.github.io/CanvasView).

## Usage
```swift
import UIKit
import CanvasView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let canvas = CanvasView(frame: CGRect(x: 0, y: 0, width: 400, height: 300))
        let borders = CanvasPath()
        
        borders.strokeColor = UIColor(white: 0.9, alpha: 1)
        borders.move(to: CGPoint(x: 20, y: 50))
        borders.addLine(to: CGPoint(x: 350, y: 50))
        borders.addLine(to: CGPoint(x: 350, y: 275))
        borders.addLine(to: CGPoint(x: 20, y: 275))
        borders.addLine(to: CGPoint(x: 20, y: 50))
        
        let white = CanvasPath(rect: CGRect(x: 20, y: 50, width: 330, height: 75))
        white.fillColor = UIColor.white
        
        let blue = CanvasPath(rect: CGRect(x: 20, y: 125, width: 330, height: 75))
        blue.fillColor = UIColor(red: 0, green: 0.224, blue: 0.651, alpha: 1)
        
        let red = CanvasPath(rect: CGRect(x: 20, y: 200, width: 330, height: 75))
        red.fillColor = UIColor(red: 0.835, green: 0.169, blue: 0.118, alpha: 1)
        
        canvas.paths += [borders, white, blue, red]
        
        view.addSubview(canvas)
    }
}
```