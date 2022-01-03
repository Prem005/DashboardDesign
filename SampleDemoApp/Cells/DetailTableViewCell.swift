//
//  DetailTableViewCell.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import UIKit

class DetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var lblHeader: UILabel!
    
    @IBOutlet weak var lblLeaderShip: UILabel!
    
    @IBOutlet weak var lblPM: UILabel!
    
    @IBOutlet weak var lblStats: UILabel!
    
    @IBOutlet weak var lblMLearning: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadData(data : rankingDetails!) -> Void {
        
        self.lblHeader.text = data.heading
        self.lblLeaderShip.text = data.leaderShip
        self.lblPM.text = data.pm
        self.lblStats.text = data.states
        self.lblMLearning.text = data.M_Learning
        
    }
    

}
