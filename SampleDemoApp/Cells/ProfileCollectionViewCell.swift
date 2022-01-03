//
//  ProfileCollectionViewCell.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var iMGSelectedView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        iMGSelectedView.layoutIfNeeded()
        iMGSelectedView.layer.cornerRadius = min(iMGSelectedView.frame.size.width, iMGSelectedView.frame.size.height)/2
        iMGSelectedView.layer.borderWidth = 5
        iMGSelectedView.layer.borderColor = UIColor(red: 96/255, green: 179/255, blue: 161/255, alpha: 1.0).cgColor
        iMGSelectedView.clipsToBounds = true
    }
    
    func loadData(data : profileData!, isSelected : Bool) -> Void {
        
        if isSelected {
            iMGSelectedView.isHidden = false
        }
        else {
            iMGSelectedView.isHidden = true
        }
        
        self.profileImg.image = UIImage(named: data.profileImg, in: Bundle(for: type(of:self)), compatibleWith: nil)
        
        self.lblName.text = data.name
        
        
    }
}
