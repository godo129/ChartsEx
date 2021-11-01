//
//  thirdViewController.swift
//  chartViewEx
//
//  Created by hong on 2021/11/01.
//

import UIKit
import Charts

class thirdViewController: UIViewController, ChartViewDelegate {
    
    let pieChart = PieChartView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        pieChart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        pieChart.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.width)
        pieChart.center = view.center
        
        var entries = [ChartDataEntry]()
        
        for x in 0..<10 {
            entries.append(ChartDataEntry(x: Double(x),
                                          y: Double(x)))
        }
        
        let set = PieChartDataSet(entries: entries)
        set.colors = ChartColorTemplates.pastel()
        let data = PieChartData(dataSet: set)
        pieChart.data = data
        
        view.addSubview(pieChart)
        
        
        
    }
    

}
