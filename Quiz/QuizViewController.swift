//
//  QuizViewController.swift
//  Quiz
//
//  Created by litech on 2015/02/10.
//  Copyright (c) 2015年 LifeisTech. All rights reserved.
//

import UIKit

class QuizViewController: UIViewController {
    //クイズを格納する配列
    var quizArray = [[Any]]()
    
    //正解数
    var correctAnswer: Int = 0
    
    //クイズを表示するTextView
    @IBOutlet var quizTextView: UITextView!
    
    //選択肢のボタン
    @IBOutlet var choiceButtons1: UIButton!
    @IBOutlet var choiceButtons2: UIButton!
    @IBOutlet var choiceButtons3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //------------------------ここから下にクイズを書く------------------------//
        quizArray.append(["一番好きな色は？", "黄色", "ピンク", "緑", 1])
        quizArray.append(["ペットの犬の名前は？", "ジョン", "ジャック", "コタロウ", 2])
        quizArray.append(["一番好きな食べ物は？", "肉", "卵", "お米", 2])
        quizArray.append(["好きなスポーツは？", "サッカー", "卓球", "テニス", 3])
        quizArray.append(["髪の毛の量は？", "多い", "少ない", "普通", 1])
        quizArray.append(["自分の一番嫌いなところは？", "身長が低い", "足の指が巻き爪", "顔が丸い", 2])
        quizArray.append(["一番好きな匂いは？", "フローラル系", "ジャスミン系", "シトラス系", 3])
        quizArray.append(["ついつい買ってしまうものは？", "ポーチ", "アクセサリー", "洋服", 3])
        quizArray.append(["今使ってる財布は誰からもらった？", "母", "姉", "父", 2])
        quizArray.append(["公園で一番好きな遊具は？", "ブランコ", "滑り台", "ジャングルジム", 1])
        //------------------------ここから上にクイズを書く------------------------//
       
        quizArray.shuffle()
        
        choiceQuiz()
    }
    
    func choiceQuiz() {
        quizTextView.text = quizArray[0][0] as? String
        
        //選択肢のボタンにそれぞれ選択肢のテキストをセット
        choiceButtons1.setTitle(quizArray[0][1] as? String, for: .normal)
        choiceButtons2.setTitle(quizArray[0][2] as? String, for: .normal)
        choiceButtons3.setTitle(quizArray[0][3] as? String, for: .normal)
    }
    
    @IBAction func choiceAnswer(sender: UIButton) {
        if quizArray[0][4] as! Int == sender.tag {
            //正解数を増やす
            correctAnswer+=1
        }
        
        quizArray.remove(at: 0)
        //解いた問題数の合計が予め設定していた問題数に達したら結果画面へ
        if quizArray.count == 0 {
            performSegueToResult()
        } else {
            choiceQuiz()
        }
    }
    
    func performSegueToResult() {
        performSegue(withIdentifier: "toResultView", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toResultView") {
            
            let resultView = segue.destination as! ResultViewController
            resultView.correctAnswer = self.correctAnswer
        }
    }
}


