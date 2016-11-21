//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by Naohiro Segawa on 2016/11/20.
//  Copyright © 2016年 segayan3. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // ResultViewControllerにtextFieldの値を渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerにtextFieldの値を渡す
        resultViewController.name = nameText.text!
    }
    
    // ResultViewControllerから戻るsegue
    @IBAction func unwind(segue: UIStoryboardSegue) {
        
    }


}

