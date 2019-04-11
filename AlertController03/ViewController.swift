//
//  ViewController.swift
//  AlertController03
//
//  Created by dit02 on 2019. 4. 11..
//  Copyright © 2019년 dit02. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var returnLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func camButton(_ sender: Any) {
       let  myAlertController = UIAlertController(title: "Camera", message: "Take a Picture", preferredStyle: .alert)
        
        // UIAlertaction 정의
       // let camAction = UIAlertAction(title: "사진촬영", style: .default, handler: nil)
        let camAction = UIAlertAction(title: "사진촬영", style: .default, handler:{
            (action:UIAlertAction) -> Void in
            self.returnLabel.text = "사진촬영을 시작합니다."
            self.view.backgroundColor = UIColor.blue
        }
    )
    
        let libAction = UIAlertAction(title: "사진 라이브러리", style: .default) {
            (action:UIAlertAction) -> Void in
            self.returnLabel.text = "사진 라이브러리 가기"
            self.view.backgroundColor = UIColor.green
        }
        
        let saveAction = UIAlertAction(title: "사진저장", style: .default) {
            (action:UIAlertAction) -> Void in
            self.returnLabel.text = "사진 저장완료!"
            self.view.backgroundColor = UIColor.yellow
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
         
        let deleteAction =  UIAlertAction(title: "사진삭제", style: .destructive) {
            (action:UIAlertAction) -> Void in
            self.returnLabel.text = "사진 삭제완료!"
            self.view.backgroundColor = UIColor.red
        }
        
        myAlertController.addAction(camAction)
        myAlertController.addAction(libAction)
        myAlertController.addAction(saveAction)
        myAlertController.addAction(cancelAction)
        myAlertController.addAction(deleteAction)
        
        self.present(myAlertController, animated: true, completion: nil)
    }
    
}

