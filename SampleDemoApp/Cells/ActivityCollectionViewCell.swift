//
//  ActivityCollectionViewCell.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import UIKit

class ActivityCollectionViewCell: UICollectionViewCell {
  
    @IBOutlet weak var lblHeader: UILabel!
    
    @IBOutlet weak var lblDescription: UILabel!
    
    func loadData(data : teamDetails) -> Void {
        
        self.lblHeader.text = data.score
        self.lblDescription.text = data.activityName
        
    }
}
