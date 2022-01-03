//
//  ViewController.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tabCollectionView: UICollectionView!
    
    @IBOutlet weak var profileCollectionView: UICollectionView!
    
    @IBOutlet weak var teamCollectionView: UICollectionView!
    
    @IBOutlet weak var detailTableView: UITableView!
    
    
    var selectedTabIndex: Int = 0
    var selectedProfileIndex: Int = 0
    
    
    @IBOutlet weak var nsContraintTeamsCollectionHeight: NSLayoutConstraint!
    
    
    var viewModel = DashboardViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        detailTableView.estimatedRowHeight = 100

        viewModel.dataBinding()
        
        
        tabCollectionView.reloadData()
        profileCollectionView.reloadData()
        teamCollectionView.reloadData()
        
        
        detailTableView.reloadData()
        
        setupView()
        
    }
    
    func setupView() {
        
        self.view.layoutIfNeeded()
        
        nsContraintTeamsCollectionHeight.constant = teamCollectionView.contentSize.height
        
        self.view.layoutIfNeeded()
    }
}




extension ViewController : UITableViewDataSource, UITableViewDelegate {
 
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.rankingDetailsContainer?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailTableViewCell", for: indexPath) as! DetailTableViewCell
        
        
        cell.loadData(data: (viewModel.rankingDetailsContainer?[indexPath.row])!)
        
        
        return cell
    }
    
    
}





extension ViewController : UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {

        if collectionView == tabCollectionView  {

            return CGSize(width: 120, height: 60)
        }
        else if collectionView == profileCollectionView {
            return CGSize(width: 130, height: 120)
        }
        else {
            let width  = (collectionView.frame.width-40)/2
            return CGSize(width: width, height: 100)
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == tabCollectionView  {
            
            return viewModel.tabDataContainer?.count ?? 0
        }
        else if collectionView == profileCollectionView {
            return viewModel.profileContainer?.count ?? 0
        }
        else {
            return viewModel.teamDetailsContainer?.count ?? 0
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == tabCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TabingCollectionViewCell", for: indexPath) as! TabingCollectionViewCell
            
            var selectedProfile =  false
            
            if selectedTabIndex == indexPath.row {
                selectedProfile = true
            }
            
            cell.loadData(data: (viewModel.tabDataContainer?[indexPath.row])!,isSelected: selectedProfile)
            
            return cell

            
        }
        else if collectionView == profileCollectionView {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfileCollectionViewCell", for: indexPath) as! ProfileCollectionViewCell
            
            var selectedProfile =  false
            
            if selectedProfileIndex == indexPath.row {
                selectedProfile = true
            }
            
            cell.loadData(data: (viewModel.profileContainer?[indexPath.row])!,isSelected: selectedProfile)
            
            return cell
            
        }
        else {
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ActivityCollectionViewCell", for: indexPath) as! ActivityCollectionViewCell
            
            cell.layer.borderColor = UIColor(red: 128/255, green: 128/255, blue: 161/255, alpha: 1.0).cgColor
            cell.layer.borderWidth = 1;
            cell.layer.cornerRadius = 10;
            
            cell.loadData(data: (viewModel.teamDetailsContainer?[indexPath.row])!)
            
            return cell
        }
    
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == tabCollectionView {
            
            selectedTabIndex = indexPath.row
            
            collectionView.reloadData()
        }
        else if collectionView == profileCollectionView {
            
            selectedProfileIndex = indexPath.row
            
            collectionView.reloadData()
        }
    }
}


