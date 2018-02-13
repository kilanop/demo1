//
//  ViewController.swift
//  demo1
//
//  Created by ios on 2017/12/29.
//  Copyright © 2017年 pcschool. All rights reserved.
//

import UIKit



class ViewController: UIViewController
{
    @IBOutlet weak var money: UITextField!
    @IBOutlet weak var fee: UILabel!
    @IBOutlet weak var total: UILabel!
    @IBOutlet weak var carriageChangeSW: UISwitch!
    @IBOutlet weak var carriageChangeSL: UISlider!
    
    @IBAction func changeMoney(_ sender: Any)
    {
        Countsum()
    }
    var str:String = "0"
    @IBAction func changeSW(_ sender: Any)
    {
        
        Countsum()
        if(carriageChangeSW.isOn)
        {
            carriageChangeSL.isEnabled = true
            carriageChangeSL.value = Float(str)!
            fee.text = String(Int(carriageChangeSL.value))
        }
        else
        {
            carriageChangeSL.isEnabled = false
            str = fee.text!
            fee.text = String(0)
            carriageChangeSL.value = 0.0
        }
        Countsum()
    }
    @IBAction func changeSL(_ sender: UISlider)
    {
        fee.text = String(Int(sender.value))
        Countsum()
    }
    
    func Countsum()
    {
        var price =  Int(money.text!)!
        var myfee = 0
        if carriageChangeSW.isOn
        {
            myfee = Int(fee.text!)!
        }
        var sum = price + myfee
        total.text = String(sum)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Countsum()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

