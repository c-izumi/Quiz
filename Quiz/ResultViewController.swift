//
//  ResultViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var correctAnswer:Int = 0
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var commentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if correctAnswer == 0{
           resultLabel.text = "5級"
            commentLabel.text = "学校の廊下ですれ違ったことがあるレベル。まずは挨拶から！"
        } else if correctAnswer == 1{
           resultLabel.text = "5級"
            commentLabel.text = "学校の廊下ですれ違ったことがあるレベル。まずは挨拶から！"
            
        } else if correctAnswer == 2{
           resultLabel.text = "4級"
            commentLabel.text = "同じクラスになったことがあるレベル。たくさんお話ししようね！"
            
        } else if correctAnswer == 3{
           resultLabel.text = "4級"
            commentLabel.text = "同じクラスになったことがあるレベル。たくさんお話ししようね！"
        } else if correctAnswer == 4{
           resultLabel.text = "3級"
            commentLabel.text = "泉さんのことがちょっと気になってますね。いつでもウェルカムですよ。"
        } else if correctAnswer == 5{
           resultLabel.text = "3級"
            commentLabel.text = "泉さんのことがちょっと気になってますね。いつでもウェルカムですよ。"
        } else if correctAnswer == 6{
           resultLabel.text = "2級"
            commentLabel.text = "あなたは泉さんのことがちょっと好き？？自分の気持ちに正直になろう！"
        } else if correctAnswer == 7{
           resultLabel.text = "2級"
            commentLabel.text = "あなたは泉さんのことがちょっと好き？？自分の気持ちに正直になろう！"
        } else if correctAnswer == 8{
           resultLabel.text = "準1級"
            commentLabel.text = "あなたは泉さんのことがめちゃめちゃ好きですね。私も好きだよ。"
        } else if correctAnswer == 9{
           resultLabel.text = "準1級"
            commentLabel.text = "あなたは泉さんのことがめちゃめちゃ好きですね。私も好きだよ。"
        } else if correctAnswer == 10{
           resultLabel.text = "1級"
            commentLabel.text = "え！すごい！！さては前世からお友達？ファンクラブ会員証あげちゃう"
        }
        
    }
    
}
