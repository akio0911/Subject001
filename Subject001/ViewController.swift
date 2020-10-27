//
//  ViewController.swift
//  Subject001
//
//  Created by Masaki Horimoto on 2020/10/26.
//

import UIKit

class ViewController: UIViewController {
	
	@IBOutlet var textNumberField: [UITextField]!
	@IBOutlet weak var labelResult: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		//textNumberFieldをタップした時に表示するキーボードを数字のみに
		for field in textNumberField {
			field.keyboardType = UIKeyboardType.numberPad
		}
	}

	//ボタンを押した時
	@IBAction func pressButton(_ sender: Any) {
		labelResult.text = "\(calcTotalofTextNumberField())"
	}
	
	//textNumberFieldの合計を計算する
	private func calcTotalofTextNumberField() -> Int {
		let numberResult = textNumberField.map {
				let numberText = $0.text ?? ""
				return Int(numberText) ?? 0
			}.reduce(0) {
				$0 + $1
			}
		return numberResult
	}
	
	
}

