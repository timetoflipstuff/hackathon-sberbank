//
//  StatisticViewController.swift
//  hackaton-sberbank
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Sberbank-hackaton. All rights reserved.
//

import UIKit

class StatisticViewController: UIViewController {

    
    var foodView = CircleView()
    var relaxView = CircleView()
    var TransportingView = CircleView()
    var MajorShoppinigView = CircleView()
    var OtherView = CircleView()
    
    
    var foodlabel = UILabel()
    var relaxlabel = UILabel()
    var tranportinglabel = UILabel()
    var otherlabel = UILabel()


    var arrayView = [SpensingNumbers(spensing: Spendings.Food, sum: 500),
                     SpensingNumbers(spensing: Spendings.Relax, sum: 150),
                     SpensingNumbers(spensing: Spendings.Transporting, sum: 100),
                     SpensingNumbers(spensing: Spendings.Other, sum: 50)]
    
    var arraySum  = ["12000$", "9000$", "6000$", "3000$"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        let widthView = view.frame.width
        let heigtView = view.frame.height
        
        foodView.label.text = Spendings.Food.rawValue
        foodView.backgroundColor = .yellow
        view.backgroundColor = .white
        foodView.frame = CGRect(x: 10, y: 280, width: widthView/5, height: heigtView/2)
        view.addSubview(foodView)
        
        relaxView.label.text = Spendings.Relax.rawValue
        relaxView.backgroundColor = .green
        relaxView.frame = CGRect(x: 100, y: 280 + (heigtView/2 - heigtView/3), width: widthView/5, height: heigtView/3)
        view.addSubview(relaxView)
        
        TransportingView.label.text = Spendings.Transporting.rawValue
        TransportingView.backgroundColor = .gray
        TransportingView.frame = CGRect(x: 190, y: 280 + (heigtView/2 - heigtView/4), width: widthView/5, height: heigtView/4)
        view.addSubview(TransportingView)

        OtherView.label.text = Spendings.Other.rawValue
        OtherView.backgroundColor = .blue
        OtherView.frame = CGRect(x: 280, y: 280 + (heigtView/2 - heigtView/5), width: widthView/5, height: heigtView/5)
        view.addSubview(OtherView)

        
        
        view.addSubview(foodlabel)
        view.addSubview(otherlabel)
        view.addSubview(tranportinglabel)
        view.addSubview(relaxlabel)
        
        foodlabel.text = arraySum[0]
        foodlabel.textColor = .black
        foodlabel.frame = CGRect(x: 10, y: 250, width: 100, height: 40)

        relaxlabel.text = arraySum[1]
        relaxlabel.textColor = .black
        relaxlabel.frame = CGRect(x: 100, y: 400, width: 100, height: 40)

        tranportinglabel.text = arraySum[2]
        tranportinglabel.textColor = .black
        tranportinglabel.frame = CGRect(x: 190, y: 550, width: 100, height: 40)

        otherlabel.text = arraySum[3]
        otherlabel.textColor = .black
        otherlabel.frame = CGRect(x: 280, y: 700, width: 100, height: 40)


        

//        yourLabelName.transform = CGAffineTransform(rotationAngle: CGFloat.pi / 2)

        
        //constraint
        
//        foodView.translatesAutoresizingMaskIntoConstraints = false
//        foodView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0).isActive = true
//        foodView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0).isActive = true
        
        
        

    }
    
    override func viewWillLayoutSubviews() {
        
    }
    
}
