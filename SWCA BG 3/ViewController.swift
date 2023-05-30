//
//  ViewController.swift
//  SWCA BG
//
//  Created by Fahima Qaybdid on 4/3/23.
//

import UIKit
var cardPicked = ""
var questionsPicked: [LabQuestion] = []
class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var logoPic = ["ABCLogo","ATLogo","CusLogo","CulLogo","CyberLogo","DentalLogo","ECDLogo","ElectricalLogo","ERLogo","IandELogo","IMDLogo","MedicalLogo","MpobileAppsLogo","MuLogo","PNLogo","WeldingLogo"]
    var classes = ["Auto Body Collison","Automotive Technology","Cosmetology","Culinary and Hospitility Arts","Cyber Security","Dental Technologies","Early Child Education","Electrial Trades","Engineering and Robotics","Innovation and Entreprenuership","Interactive Media Design","Medical Data Management","Mobile Apps Development","Multi-Skilled Health","Pre-Nursing","Welding and Manufacturing"]
    
    var pics = ["ABC" ,"AT","Cus","Cul","Cyber","Dental","EarlyChildhood","Electrical","ER","IandE","IMD","MedicalDataManagement","MobileApps","MultiskilledHealth","prenursing","Welding"]
    
    var classesOfQuestions: [[LabQuestion]] = [AutoBodyCollison,AutoTech,Cosmetology]
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        classes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        cell.textLabel?.text = classes[indexPath.row]
        cell.imageView?.image  = UIImage(named: logoPic[indexPath.row])
        return cell
    }
        //        Use the line below to add image
//        cell.imageView?.image = UIImage(named : cardImages [indexPath.row])
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    //        performSegue(withIdentifier: "gotDetails", sender: nil)
            questionsPicked = classesOfQuestions[indexPath.row]
            cardPicked = pics[indexPath.row]
            performSegue(withIdentifier: "gotDetails", sender: nil)
        }
       
        
    

}

