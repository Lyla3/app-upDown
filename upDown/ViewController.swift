//
//  ViewController.swift
//  upDown
//
//  Created by Lyla on 2023/04/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    
    var comNumber = Int.random(in: 1...10)
    var myNumber : Int = 1
    
    //앱의 화면에 들어오면 처음 실행되는 함수
    override func viewDidLoad() {
        //⭐️super.viewDidLoad()호출 필수!
        super.viewDidLoad()
        mainLabel.text = "숫자를 선택하세요"
        numberLabel.text = ""
        //numberLabel.text = String(myNumber)
    }
    
    //하나의 함수에 버튼 여러개 연결
    @IBAction func btnTapped(_ sender: UIButton) {
        //sender에서 선택된 숫자를 selectedNum에 넘긴다.
        //button.currentTitle -> 현재 타이틀의 숫자를 가져올 수 있음.
        guard let selectedNum = Int(sender.titleLabel?.text ?? "")
        else {
            print("selectedNum에 값이 없습니다")
            return
        }
        
        //numberLabel 업데이트
        myNumber = selectedNum
        numberLabel.text = String(myNumber)
    }
    
    
    @IBAction func selectButtonTapped(_ sender: Any) {
        //1)컴퓨터의 숫자와 내가 선택한 숫자를 비교해서 업인지 다운인지 표시
        if myNumber == comNumber {
            mainLabel.text = "Bingo!🌞"
        } else if  myNumber > comNumber {
            mainLabel.text = "Down!"
        } else {
            mainLabel.text = "Up!"
        }
    
    }
    
    @IBAction func resetButtonTspped(_ sender: Any) {
        comNumber = Int.random(in: 1...10)
        mainLabel.text = "숫자를 선택하세요"
        //myNumber = 1
        numberLabel.text = ""
    }
}

