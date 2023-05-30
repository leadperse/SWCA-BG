//
//  SecoViewController.swift
//  SWCA BG
//
//  Created by Fahima Qaybdid on 4/13/23.
//

import UIKit

class SecoViewController: UIViewController {
    @IBOutlet weak var tesstView: UIView!
    
    
    @IBOutlet weak var coin1: UIImageView!
    @IBOutlet weak var player2: UILabel!
    
    var AutoBody :[CGFloat] = []
    var AutoTec :[CGFloat] = []
    var Cosme : [CGFloat] = []
    var Culinary : [CGFloat] = []
    var Cyb : [CGFloat] = []
    var Dent : [CGFloat] = []
    var EarlyC : [CGFloat] = []
    var ElecH : [CGFloat] = [240,272,304,336,388,420,452,484]
    var ElecW : [CGFloat] = [344,344,344,344,344,344,344,344]
    var Engineer : [CGFloat] = []
    var Innov : [CGFloat] = []
    var Interactive : [CGFloat] = []
    var Medical : [CGFloat] = []
    var Mobile : [CGFloat] = []
    var Multi : [CGFloat] = []
    var PreNursing : [CGFloat] = []
    var weld : [CGFloat] = []
    
    var playerr = true
    var result = true
    var   counterVariable = 0
    let bar = CGRect(origin: CGPoint(x: 36, y: 203), size: CGSize(width: 41, height: 35))
    @IBOutlet weak var player: UILabel!
    
    @IBOutlet weak var imageVie: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadDataa()
        load()
        print(cardPicked)
        coin1.image = UIImage(named: "coin")
       
    }
    
    func load(){
        imageVie.image = UIImage(named: cardPicked)
        
    }
    
    
    
    @IBAction func Answer(_ sender: UIButton) {
        
        if result == true{
            
            player.text = questionsPicked[counterVariable].A
            
        }else {
            loadDataa()
        }
        result = false
    }
    
    @IBAction func next1(_ sender: UIButton) {
        if playerr  == true{
            counterVariable += 1
            loadData()
        }
        if counterVariable == questionsPicked.count{
            counterVariable = 0
        }
        playerr = false
        result = false
        coinslide()
//        coinTest()
    }
    func loadDataa(){
        player.text = questionsPicked[counterVariable].Q
        print("HI")
    }
    func loadData(){
        player2.text = questionsPicked[counterVariable].Q
        print("Meow")
        
    }
    @IBAction func answer2(_ sender: UIButton) {
        if result == false{
            var te = questionsPicked[counterVariable].A
            player2.text = te
            
        }else {
            loadData()
        }
        
    }
    
    
    
    
    @IBAction func next2(_ sender: UIButton) {
        if playerr == false{
            counterVariable += 1
            loadDataa()
        }
        if counterVariable == questionsPicked.count{
            counterVariable = 0
        }
        playerr = true
        result = true
//        coinTest()
   }
    func coinslide(){
    
       
        let ami = CABasicAnimation(keyPath: "position")
        coin1 = UIImageView(frame: bar)
        var te = questionsPicked[counterVariable].A
        if te  == "Go back 3 spaces." {
           
        }else if te == "Go back 2 spaces" {
            
        }
    }
    
//    func coinTest(){
//        let animation = CABasicAnimation(keyPath: "position")
//        animation.fromValue = CGPoint(x: ElecW[0], y: ElecH[0])
//        animation.toValue = CGPoint(x: ElecW[1], y: ElecH[1])
//        animation.duration = 0.5
//        coin1.layer.add(animation, forKey: nil)
//    }
    
    @IBAction func testCordinate(_ sender: UITapGestureRecognizer) {
        
        let x = sender.location(in: tesstView)
        print(x)
        print("cordinate")
       
    }
    
    @IBAction func tes(_ sender: UIPanGestureRecognizer) {
        let x = sender.location(in: imageVie)
        print(x)
        print("cordinate")
    }
    
    }
    
    

