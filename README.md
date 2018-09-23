**CRCStepper**

A stepper with a label in the middle. Tap the buttons to increase or decrease the value.

**Screenshot**

![alt text](https://github.com/ChandrikaRaoC/CRCStepper/blob/master/ExampleImage.png)

**Usage**

* Initialise the view and add it as subview.\
`stepperView = StepperView(frame:CGRect(x:100,y:100, width:100, height:50))
view.addSubview(stepperView)`

* Stepper color can be set using this method. Default: light gray and white\
`stepperView.setStepperColor(buttonBackgroundColor: .blue, buttonTextColor: .white)`

* Boarder color. default: black\
`stepperView.setBoarderColor(boarder: UIColor.gray)`

* Label background color and text color. Default: white and black\
`stepperView.setValueTextAndBackgroundColor(valueBackgroundColor: .white, valueTextColor: .blue)`

* Default text. Default: 1.0\
`stepperView.setValueText(value: 3.0)`

* Set jump value. Default: 1.0\
`stepperView.setJumpValue(jump: 0.5)`

* Min Max value. Default: 0.0 and 15.0\
`stepperView.setMinMaxValues(min: 1.0, max: 9.0)`

* Set Stepper titles. Default: + and -\
`stepperView.setIncrementDecrementButtonText(incrementTitle: "😄", decrementTitle: "😞")`

* Set Stepper Images. Default: No image.\
`stepperView.setIncrementDecrementButtonImage(incrementButtonImage: #imageLiteral(resourceName: *ImageName*), decrementButtonImage: #imageLiteral(resourceName: *ImageName*))`

**Author**

Chandrika Rao C

**License**

See the LICENSE file for info.
