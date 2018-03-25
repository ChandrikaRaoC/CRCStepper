//
//  StepperView.swift
//  CRCStepper
//
//  Created by Chandrika Rao on 25/03/18.
//  Copyright © 2018 Chandrika Rao. All rights reserved.
//

import UIKit

class StepperView: UIView {
    
    var viewFrame : CGRect!
    var incrementButton = UIButton()
    var decrementButton = UIButton()
    var valueLabel = UILabel()
    
    var minValue = 0.0
    var maxValue = 15.0
    var jumpValue = 1.0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        viewFrame = frame
        backgroundColor = UIColor.green
        clipsToBounds = true
        layer.cornerRadius = 5
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 2
        
        decrementButton.backgroundColor = UIColor.lightGray
        decrementButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14 * UIScreen.main.bounds.height/667)
        decrementButton.setTitle("-", for: UIControlState.normal)
        decrementButton.clipsToBounds = true
        decrementButton.layer.cornerRadius = 5
        decrementButton.layer.maskedCorners = [.layerMinXMaxYCorner]
        decrementButton.addTarget(self, action: #selector(decrementButtonPressed), for: .touchUpInside)
        addSubview(decrementButton)
        
        valueLabel.textColor = UIColor.black
        valueLabel.backgroundColor = UIColor.white
        valueLabel.textAlignment = .center
        valueLabel.font = UIFont.init(name: "ArialRoundedMTBold", size: 12 * UIScreen.main.bounds.height/667)
        valueLabel.text = "1.0"
        addSubview(valueLabel)
        
        incrementButton.backgroundColor = UIColor.lightGray
        incrementButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14 * UIScreen.main.bounds.height/667)
        incrementButton.setTitle("+", for: UIControlState.normal)
        incrementButton.clipsToBounds = true
        incrementButton.layer.cornerRadius = 5
        incrementButton.layer.maskedCorners = [.layerMaxXMaxYCorner]
        incrementButton.addTarget(self, action: #selector(incrementButtonPressed), for: .touchUpInside)
        addSubview(incrementButton)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        frame = viewFrame
        decrementButton.frame = CGRect(x:0, y:0, width:(frame.width/3)-5, height:frame.height)
        valueLabel.frame = CGRect(x:decrementButton.frame.width, y:0, width:(frame.width/3)+10, height:frame.height)
        incrementButton.frame = CGRect(x:valueLabel.frame.width + decrementButton.frame.width, y:0, width:(frame.width/3)-5, height:frame.height)
    }
    
    @objc func decrementButtonPressed(sender : UIButton) {
        
        guard var  labelText =  Double(valueLabel.text!) else {
            return
        }
        
        if minValue < labelText {
            labelText = labelText - jumpValue
            valueLabel.text = String(labelText)
        }
    }
    
    @objc func incrementButtonPressed(sender : UIButton) {
        
        guard var  labelText =  Double(valueLabel.text!) else {
            return
        }
        
        if maxValue > labelText {
            labelText = labelText + jumpValue
            valueLabel.text = String(labelText)
        }
    }
    
    // MARK: Methods used for customisation
    
    func setStepperColor(buttonBackgroundColor: UIColor, buttonTextColor: UIColor) {
        
        decrementButton.backgroundColor = buttonBackgroundColor
        incrementButton.backgroundColor = buttonBackgroundColor
        
        decrementButton.titleLabel?.textColor = buttonTextColor
        incrementButton.titleLabel?.textColor = buttonTextColor
    }
    
    func setValueTextAndBackgroundColor(valueBackgroundColor: UIColor, valueTextColor: UIColor) {
        valueLabel.backgroundColor = valueBackgroundColor
        valueLabel.textColor = valueTextColor
    }
    
    func setBoarderColor(boarder: UIColor) {
        layer.borderColor = boarder.cgColor
    }
    
    func setMinMaxValues(min: Double, max: Double) {
        if min < max {
            minValue = min
            maxValue = max
        }
    }
    
    func setValueText(value: Double) {
        if value >= minValue && value <= maxValue {
            valueLabel.text = String(value)
        }
    }
    
    func setJumpValue(jump: Double) {
        jumpValue = jump
    }
    
    func setIncrementDecrementButtonText(incrementTitle: String, decrementTitle: String) {
        incrementButton.setTitle(incrementTitle, for: .normal)
        decrementButton.setTitle(decrementTitle, for: .normal)
    }
    
    func setIncrementDecrementButtonImage(incrementButtonImage: UIImage, decrementButtonImage: UIImage) {
        incrementButton.setTitle("", for: .normal)
        decrementButton.setTitle("", for: .normal)
        incrementButton.setImage(incrementButtonImage, for: .normal)
        decrementButton.setImage(decrementButtonImage, for: .normal)
    }
}
