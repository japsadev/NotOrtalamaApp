//
//  NotEkleViewController.swift
//  NotOrtalamaApp
//
//  Created by Salih Yusuf Göktaş on 21.05.2023.
//

import UIKit

class NotEkleViewController: UIViewController {
	
	@IBOutlet weak var textfieldDersAdi: UITextField!
	@IBOutlet weak var textfieldNot1: UITextField!
	@IBOutlet weak var textfieldNot2: UITextField!
	@IBOutlet weak var ekleOzellik: UIButton!
	
    override func viewDidLoad() {
        super.viewDidLoad()
		
		//Klavye kapatma
		let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector (closeTheKeyboard))
		view.addGestureRecognizer (gestureRecognizer)
		
		//ekle butonunun şeklini değiştirmek için yazdık
		ekleOzellik.backgroundColor = UIColor.init(red: 0/255, green: 122/255, blue: 255/255, alpha: 1)
		ekleOzellik.layer.cornerRadius = 25.0
		ekleOzellik.tintColor = UIColor.white
		
		//ekle butonuna shadow atadık
		ekleOzellik.layer.shadowColor = UIColor.darkGray.cgColor
		ekleOzellik.layer.shadowRadius = 4
		ekleOzellik.layer.shadowOpacity = 0.5
		ekleOzellik.layer.shadowOffset = CGSize(width: 0, height: 0)

        
    }
	
	@objc func closeTheKeyboard () {
		
		view.endEditing(true)
		
	}
	
	@IBAction func notEkle(_ sender: Any) {
		if let ad = textfieldDersAdi.text ,let not1 = textfieldNot1.text ,let not2 = textfieldNot2.text {
			
			if let n1 = Int(not1) , let n2 = Int(not2) {
				
				Notlardao().notEkle(ders_adi: ad, not1: n1, not2: n2)
				
			}
		}
	}
	
}
