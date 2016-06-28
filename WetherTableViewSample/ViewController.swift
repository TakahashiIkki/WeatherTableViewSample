//
//  ViewController.swift
//  WetherTableViewSample
//
//  Created by 一騎高橋 on 2016/06/29.
//  Copyright © 2016年 IkkiTakahashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    /// 画像のファイル名
    let imageNames = ["tenki_hare.png", "tenki_kumori.png", "tenki_umbrella.png", "tenki_snow.png"]
    
    /// 画像のタイトル
    let imageTitles = ["晴れ", "曇り", "雨", "雪"]
    
    /// 画像の説明
    let imageDescriptions = [
        "晴れのアイコンです",
        "曇りのアイコンです",
        "雨のアイコンです。",
        "雪のアイコンです。"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // セルの個数を指定するデリゲートメソッド
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageNames.count
    }
    
    // セルに値を指定するデリゲートメソッド
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("MyCustomCell") as! CustomTableViewCell
        
        // セルに値を設定
        /*
        cell.myImageView.image = UIImage(named: imageNames[indexPath.row])
        cell.myTitleLabel.text = imageTitles[indexPath.row]
        cell.myDescriptionLabel.text = imageDescriptions[indexPath.row]
        */
        
        // 通常はこのように書く
        cell.setCell(imageNames[indexPath.row], titleText: imageTitles[indexPath.row], DescriptionText: imageDescriptions[indexPath.row])
        
        return cell
    }
}

