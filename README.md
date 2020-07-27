# CustomSegmentedControl


## CustomSegmentedControl - Customizable UISegmentedControl for iOS

A customized UIView subclass that customizes the design of UISegmentedControl UI element.

<img width="500" alt="Demo image" src="https://raw.githubusercontent.com/Code-With-Coffee/CustomSegmentedControl/9c22c56915ee6754afb09514301f7215bf821f0a/CustomSegmentedControl.png">

## Compatibility

- iOS 12+
- Xcode 10.0+
- Swift 5.0

#### You can also use storyboard to create a `CustomSegmentedControl` UI element.

## Features
- Extremely simple and easy to use
- Customizable interface

## How to use

```swift
class ViewController: UIViewController, CustomSegmentedControlDelegate {

}
```

In order to customize `CustomSegmentedControl` when set from interface builder, use

```swift
@IBOutlet weak var interfaceSegmented: CustomSegmentedControl! {
    didSet{
        interfaceSegmented.setButtonTitles(buttonTitles: ["OFF","HTTP","AUTO"])
        interfaceSegmented.selectorViewColor = .orange
        interfaceSegmented.selectorTextColor = .orange
    }
}
```

Use the following code when `CustomSegmentedControl` is added programmatically.

```swift
    let codeSegmented = CustomSegmentedControl(frame: CGRect(x: 0, y: 50, width: self.view.frame.width, height: 50), buttonTitle: ["OFF","HTTP","AUTO"])
    codeSegmented.backgroundColor = .clear
    view.addSubview(codeSegmented)        
```

Implement `CustomSegmentedControlDelegate` protocol in order to perform custom action when the segmented control index is changed

```swift
    func change(to index:Int) {
        print("segmentedControl index changed to \(index)")
    }
```

## Author

Github: [@faganello60](https://github.com/faganello60)


## License

The MIT License (MIT)

Copyright (c) 2018 Faganello.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
