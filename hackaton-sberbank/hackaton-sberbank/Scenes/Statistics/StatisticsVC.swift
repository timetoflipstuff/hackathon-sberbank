//
//  ViewController.swift
//  StatisticsForSber
//
//  Created by Алексей ]Чанов on 16/11/2019.
//  Copyright © 2019 Алексей Чанов. All rights reserved.
//

import UIKit

class StatisticsVC: UIViewController {
    
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let frame = CGRect(x: 0, y: 0, width: 0, height: 0)
        let collectionView = UICollectionView(frame: frame,
                                              collectionViewLayout: layout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.isPagingEnabled = true
        collectionView.backgroundColor = .white
        collectionView.register(StatisticsViewCell.self, forCellWithReuseIdentifier: StatisticsViewCell.reuseId)
        collectionView.contentInsetAdjustmentBehavior = .never
        return collectionView
    }()
    
    //Заглушка данных для графика
    let spendings = [SpensingNumbers(spensing: Spendings.Food, sum: 19214),
                     SpensingNumbers(spensing: Spendings.Relax, sum: 1400),
                     SpensingNumbers(spensing: Spendings.Transporting, sum: 15400),
                     SpensingNumbers(spensing: Spendings.MajorShoppinig,sum: 1100),
                     SpensingNumbers(spensing: Spendings.Other, sum: 125)].sorted { ($0.sum > $1.sum) }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(collectionView)
        collectionView.dataSource = self
        collectionView.delegate = self
        
        let margins = view.layoutMarginsGuide
        collectionView.topAnchor.constraint(equalTo: margins.topAnchor).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: margins.bottomAnchor).isActive = true
        
    }
    
    
    func summAllValue (array: [SpensingNumbers]) -> Int {
        var summ = 0
        for value in array {
            summ += value.sum
        }
        return summ
    }
    
    func getIntArrayForModel(array: [SpensingNumbers]) -> [Int] {
        var summArray = [0].sorted { $0 > $1 }
        for value in array {
            summArray.append(value.sum)
        }
        return summArray
    }
    
    
    
}

// MARK : - UICollectionViewDelegate & UICollectionViewDataSource

extension StatisticsVC : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return spendings.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StatisticsViewCell.reuseId, for: indexPath) as! StatisticsViewCell
        
        if indexPath.row != 0{
            let indexForCell = Double(indexPath.row) + 1.2
            cell.widthView = cell.frame.width / CGFloat(indexForCell)
            var spendingsInt = getIntArrayForModel(array: spendings)
            cell.label.text = "\(spendings[indexPath.row].spensing.rawValue) : \(spendingsInt[indexPath.row])$ "
        }else{
            cell.widthView = cell.frame.width
            cell.view.firstCellanimateGradient()
            let spendingsSummValue = summAllValue(array: spendings)
            cell.label.text = "Total expenditure : \(spendingsSummValue)$"
        }
        return cell
    }
    
}

// MARK: - CollectionView delegate
extension StatisticsVC:UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let height = collectionView.bounds.height/8
        let width = collectionView.bounds.width
        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
}
