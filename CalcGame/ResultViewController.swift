//
//  ResultViewController.swift
//  CalcGame
//
//  Created by Hayaki Maruta on 2021/07/29.
//

import UIKit

class ResultViewController:
    UIViewController {
    var point = 0

    
    @IBOutlet var recordLabel: UILabel!
    @IBOutlet var highestRecordLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        recordLabel.text = "あなたの記録　\(point)P"
        UserDefaults.standard.register(defaults: ["record":0])
        let highestRecord = UserDefaults.standard.integer(forKey: "record")
        if highestRecord < point {
            //最高記録更新の場合
           UserDefaults.standard.setValue(point, forKey: "record")
            highestRecordLabel.text = "最高記録\(point)P"
        }else{
            highestRecordLabel.text = "最高記録\(highestRecord)P"
        }
    
    }
    
    
    
    
    
    @IBAction func onBackTop(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
