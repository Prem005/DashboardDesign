//
//  TabingCollectionViewCell.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import UIKit

class TabingCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var lblName: UILabel!
    
    
    func loadData(data : tabbingData, isSelected : Bool) -> Void {
        
        if isSelected {
            self.contentView.backgroundColor = UIColor(red: 96/255, green: 179/255, blue: 161/255, alpha: 1.0)
            lblName.textColor = UIColor.white
        }
        else {
            self.contentView.backgroundColor = UIColor.white
            lblName.textColor = UIColor(red: 81/255, green: 85/255, blue: 99/255, alpha: 1.0)
        }
        
        self.lblName.text = data.tabName
        
    }
    
}
