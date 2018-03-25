//
//  StepperViewController.swift
//  CRCStepper
//
//  Created by Chandrika Rao on 25/03/18.
//  Copyright © 2018 Chandrika Rao. All rights reserved.
//

import UIKit

class StepperViewController: UIViewController {

    var stepperView : StepperView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func loadView() {
        super.loadView()
        
        view.backgroundColor = UIColor.white
        stepperView = StepperView(frame:CGRect(x:100,y:100, width:100, height:50))
        view.addSubview(stepperView)
        
        stepperView.setStepperColor(buttonBackgroundColor: .gray, buttonTextColor: .white)
        stepperView.setValueTextAndBackgroundColor(valueBackgroundColor: .white, valueTextColor: .black)
        stepperView.setJumpValue(jump: 0.5)
        stepperView.setMinMaxValues(min: 1.0, max: 9.0)
        stepperView.setValueText(value: 3.0)
        stepperView.setIncrementDecrementButtonText(incrementTitle: "+", decrementTitle: "-")
        //stepperView.setIncrementDecrementButtonText(incrementTitle: "😄", decrementTitle: "😞")
        stepperView.setBoarderColor(boarder: UIColor.gray)
    }
}
