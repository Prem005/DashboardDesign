//
//  File.swift
//  SampleDemoApp
//
//  Created by Admin on 02/01/22.
//

import Foundation

struct DashboardViewModel {
    
    var tabDataContainer : [tabbingData]?
    
    var profileContainer : [profileData]?
    
    var teamDetailsContainer : [teamDetails]?
    
    var rankingDetailsContainer : [rankingDetails]?
    
    
    mutating func dataBinding() -> Void {
        
        tabDataBinding()
        profileDataBinding()
        teamDataBinding()
        rankDataBinding()
    }
    
    mutating func tabDataBinding() -> Void {
        
        tabDataContainer = [
            tabbingData(tabName: "Overview"),
            tabbingData(tabName: "Learning Plan"),
            tabbingData(tabName: "Assignments"),
            tabbingData(tabName: "Learning Data"),
            tabbingData(tabName: "Learning Set"),
            tabbingData(tabName: "Data Set")
            ]
        
        print(tabDataContainer as Any)
    }
    
    mutating func profileDataBinding() -> Void {
        
        profileContainer = [
            
            profileData(profileImg: "image1.jpeg", name: "Asutosh Upadhayay"),
            profileData(profileImg: "image2.jpeg", name: "Ron Balino"),
            profileData(profileImg: "image3.jpeg", name: "Peter Anderson"),
            profileData(profileImg: "image4.jpeg", name: "Susen Gora"),
            profileData(profileImg: "image5.jpeg", name: "Hariate Pamella"),
            profileData(profileImg: "image6.jpeg", name: "Riya Handson")
        ]
        
        print(profileContainer?.description as Any)
        
    }
    
    mutating func teamDataBinding() -> Void {
        
        teamDetailsContainer = [
            teamDetails(score: "44", activityName: "Overall Activity"),
            teamDetails(score: "25", activityName: "Cards Completed"),
            teamDetails(score: "5", activityName: "Cards Contributed"),
            teamDetails(score: "1200", activityName: "Points Scored"),
            teamDetails(score: "86h 26m", activityName: "Learning Hours"),
            teamDetails(score: "19", activityName: "Assignments Overdue"),
            teamDetails(score: "22", activityName: "Cards Shared"),
            teamDetails(score: "3", activityName: "Active Users"),
        ]
        print(teamDetailsContainer?.description as Any)
    }
    
    mutating func rankDataBinding() -> Void {
        
        rankingDetailsContainer = [
            
            rankingDetails(heading: "Top Learning Goals", leaderShip: "2", pm: "1", states: "3", M_Learning: "1"),
            rankingDetails(heading: "Top Skills (Assessments)", leaderShip: "1", pm: "1", states: "1", M_Learning: "1"),
            rankingDetails(heading: "New Learnings", leaderShip: "2", pm: "5", states: "3", M_Learning: "8"),
            rankingDetails(heading: "Learning Overviews", leaderShip: "4", pm: "1", states: "3", M_Learning: "2")
        ]
        print(rankingDetailsContainer?.description as Any)
    }
    
    
    
    
}
