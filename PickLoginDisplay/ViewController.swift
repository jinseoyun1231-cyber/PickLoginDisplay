//
//  ViewController.swift
//  PickLoginDisplay
//
//  Created by Seoyun Jin on 5/12/26.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let pickLogintext1 = UILabel()
        pickLogintext1.text = "PiCK에 로그인 하기"
        pickLogintext1.textColor = .black
        pickLogintext1.font = UIFont.systemFont(ofSize: 30) // 글자 크기
        
        let pickLogintext2 = UILabel()
        pickLogintext2.text = "PiCK 계정으로 로그인 해주세요."
        pickLogintext2.textColor = .gray
        pickLogintext2.font = UIFont.systemFont(ofSize: 15)
        
        view.addSubview(pickLogintext1)
        view.addSubview(pickLogintext2)
        pickLogintext1.translatesAutoresizingMaskIntoConstraints = false
        pickLogintext2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pickLogintext1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pickLogintext1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            pickLogintext2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            pickLogintext2.topAnchor.constraint(equalTo: pickLogintext1.bottomAnchor, constant: 10)
        ])
        
        
        // Do any additional setup after loading the view.
    }
}

