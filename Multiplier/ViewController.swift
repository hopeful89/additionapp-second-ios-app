//
//  ViewController.swift
//  Multiplier
//
//  Created by brandon stine on 1/17/16.
//  Copyright © 2016 brandon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainLogo: UIImageView!
    @IBOutlet weak var addLbl: UILabel!
    @IBOutlet weak var multiplierText: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var addBtn: UIButton!
    
    var multiplier: Int = 0
    var oldSum: Int = 0
    var newSum: Int = 0
    var maxSum: Int = 50
    
    @IBAction func hitAddBtn(sender: AnyObject) {
        newSum = oldSum + multiplier
        addLbl.text = "\(oldSum) + \(multiplier) = \(newSum)"
        oldSum = newSum
        
        if newSum >= maxSum{
        gameOver()
        }
    }
    
    @IBAction func hitPlayBtn(){
        
        if multiplierText.text != nil && multiplierText.text != "" {
            mainLogo.hidden = true
            multiplierText.hidden = true
            playBtn.hidden = true
            
            addLbl.hidden = false
            addBtn.hidden = false
            
            multiplier = Int(multiplierText.text!)!
        }
    }
    
    func gameOver(){
        
            mainLogo.hidden = false
            multiplierText.hidden = false
            playBtn.hidden = false
            
            addLbl.hidden = true
            addBtn.hidden = true
            addLbl.text = "Prepare to add numbers!"
        oldSum = 0; newSum = 0; multiplierText.text = nil;
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

