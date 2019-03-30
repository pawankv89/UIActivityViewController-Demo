
UIActivityViewController Demo
=========

## This is a quick demo about UIActivityViewController. in Swift 5.
------------
 Added Some screens here.
 
![](https://github.com/pawankv89/UIActivityViewController-Demo/blob/master/images/screen_1.PNG)
![](https://github.com/pawankv89/UIActivityViewController-Demo/blob/master/images/screen_2.PNG)
![](https://github.com/pawankv89/UIActivityViewController-Demo/blob/master/images/screen_3.PNG)
![](https://github.com/pawankv89/UIActivityViewController-Demo/blob/master/images/screen_4.PNG)
![](https://github.com/pawankv89/UIActivityViewController-Demo/blob/master/images/screen_5.PNG)




## Usage
------------
 
Integration Steps

```swift

@IBAction func shareURLButtonTap(_ sender: Any) {

//URL
let websiteURL = "https://github.com/pawankv89"

let activityVC = UIActivityViewController(activityItems: [websiteURL], applicationActivities: nil)

//New Excluded Activities Code
activityVC.excludedActivityTypes = [UIActivity.ActivityType.airDrop, UIActivity.ActivityType.saveToCameraRoll]

activityVC.popoverPresentationController?.sourceView = sender as? UIView
self.present(activityVC, animated: true, completion: nil)

}

```

There is a sample function in ViewController that you can simply call. 

```swift
@IBAction func shareAllButtonTap(_ sender: Any) {

//Image Path
let imagePath = Bundle.main.url(forResource: "image", withExtension: "png")!
//URL
let websiteURL = "https://github.com/pawankv89"
//Text
let text = "Pawan Kumar"

let activityVC = UIActivityViewController(activityItems: [imagePath, websiteURL, text], applicationActivities: nil)
activityVC.popoverPresentationController?.sourceView = sender as? UIView
self.present(activityVC, animated: true, completion: nil)
}
```


## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).

## Change-log

A brief summary of each this release can be found in the [CHANGELOG](CHANGELOG.mdown). 
